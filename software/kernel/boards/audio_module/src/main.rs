#![crate_name = "audio_module"]
#![no_std]
#![no_main]
#![feature(const_fn,lang_items)]

extern crate cortexm4;
extern crate capsules;
#[macro_use(static_init)]
extern crate kernel;
extern crate sam4l;

extern crate signpost_drivers;
extern crate signpost_hil;

use capsules::timer::TimerDriver;
use capsules::virtual_alarm::{MuxAlarm, VirtualMuxAlarm};
use kernel::hil::Controller;
use kernel::{Chip, MPU, Platform};

// For panic!()
#[macro_use]
pub mod io;


unsafe fn load_processes() -> &'static mut [Option<kernel::process::Process<'static>>] {
    extern "C" {
        /// Beginning of the ROM region containing app images.
        static _sapps: u8;
    }

    const NUM_PROCS: usize = 2;

    #[link_section = ".app_memory"]
    static mut MEMORIES: [[u8; 8192]; NUM_PROCS] = [[0; 8192]; NUM_PROCS];

    static mut processes: [Option<kernel::process::Process<'static>>; NUM_PROCS] = [None, None];

    let mut addr = &_sapps as *const u8;
    for i in 0..NUM_PROCS {
        // The first member of the LoadInfo header contains the total size of each process image. A
        // sentinel value of 0 (invalid because it's smaller than the header itself) is used to
        // mark the end of the list of processes.
        let total_size = *(addr as *const usize);
        if total_size == 0 {
            break;
        }

        let process = &mut processes[i];
        let memory = &mut MEMORIES[i];
        *process = Some(kernel::process::Process::create(addr, total_size, memory));
        // TODO: panic if loading failed?

        addr = addr.offset(total_size as isize);
    }

    if *(addr as *const usize) != 0 {
        panic!("Exceeded maximum NUM_PROCS.");
    }

    &mut processes
}

/*******************************************************************************
 * Setup this platform
 ******************************************************************************/

struct AudioModule {
    gpio: &'static capsules::gpio::GPIO<'static, sam4l::gpio::GPIOPin>,
    timer: &'static TimerDriver<'static, VirtualMuxAlarm<'static, sam4l::ast::Ast>>,
}

impl Platform for AudioModule {
    fn with_driver<F, R>(&mut self, driver_num: usize, f: F) -> R
        where F: FnOnce(Option<&kernel::Driver>) -> R
    {

        match driver_num {
            1 => f(Some(self.gpio)),
            3 => f(Some(self.timer)),
            _ => f(None)
        }
    }
}


unsafe fn set_pin_primary_functions() {
    use sam4l::gpio::{PA};
    use sam4l::gpio::PeripheralFunction::{A};
    
	//analog inputs?
    PA[04].configure(Some(A)); //Input one
    PA[05].configure(Some(A)); //Input two

    PA[06].configure(None); //
    PA[07].configure(None); //2 reset
    PA[08].configure(None); //2 power
    PA[09].configure(None); //2 strobe
    PA[10].configure(None); //strobe
    PA[11].configure(None); //reset
    PA[12].configure(None); //power
    PA[13].configure(None); //
    PA[14].configure(None); //G2
    PA[15].configure(None); //R2
    PA[16].configure(None); //G1
	PA[17].configure(None); //R1
    PA[18].configure(None); //PPS
    PA[19].configure(None); //Mod out
    PA[20].configure(None); //Mod in
    PA[21].configure(None); //
    PA[22].configure(None); //
    PA[23].configure(Some(A)); //SDA
	PA[24].configure(Some(A)); //SCL
	PA[25].configure(Some(A)); //USB-
	PA[26].configure(Some(A)); //USB+

}

/*******************************************************************************
 * Main init function
 ******************************************************************************/

#[no_mangle]
pub unsafe fn reset_handler() {
    sam4l::init();

    // Source 32Khz and 1Khz clocks from RC23K (SAM4L Datasheet 11.6.8)
    sam4l::bpm::set_ck32source(sam4l::bpm::CK32Source::RC32K);

    set_pin_primary_functions();

    //
    // Timer
    //
    let ast = &sam4l::ast::AST;

    let mux_alarm = static_init!(
        MuxAlarm<'static, sam4l::ast::Ast>,
        MuxAlarm::new(&sam4l::ast::AST),
        16);
    ast.configure(mux_alarm);

    let virtual_alarm1 = static_init!(
        VirtualMuxAlarm<'static, sam4l::ast::Ast>,
        VirtualMuxAlarm::new(mux_alarm),
        24);
    let timer = static_init!(
        TimerDriver<'static, VirtualMuxAlarm<'static, sam4l::ast::Ast>>,
        TimerDriver::new(virtual_alarm1, kernel::Container::create()),
        12);
    virtual_alarm1.set_client(timer);

    //
    // I2C Buses
    //

    //some declaration of an i2c slave that I don't know how to do yet

    //
    // Remaining GPIO pins
    //
    let gpio_pins = static_init!(
        [&'static sam4l::gpio::GPIOPin; 17],
        [&sam4l::gpio::PA[06],  
         &sam4l::gpio::PA[07],  
         &sam4l::gpio::PA[08],  
         &sam4l::gpio::PA[09],  
         &sam4l::gpio::PA[10],  
         &sam4l::gpio::PA[11],  
         &sam4l::gpio::PA[12],  
         &sam4l::gpio::PA[13],  
         &sam4l::gpio::PA[14],  
         &sam4l::gpio::PA[15],  
         &sam4l::gpio::PA[16],  
         &sam4l::gpio::PA[17],  
         &sam4l::gpio::PA[18],  
         &sam4l::gpio::PA[19],  
         &sam4l::gpio::PA[20],  
         &sam4l::gpio::PA[21],  
         &sam4l::gpio::PA[22]],  
        17 * 4
    );
    let gpio = static_init!(
        capsules::gpio::GPIO<'static, sam4l::gpio::GPIOPin>,
        capsules::gpio::GPIO::new(gpio_pins),
        20);
    for pin in gpio_pins.iter() {
        pin.set_client(gpio);
    }


    //
    // Actual platform object
    //
    let audio_module = static_init!(
        AudioModule,
        AudioModule {
            gpio: gpio,
            timer: timer,
        },
        64/8);

	sam4l::gpio::PA[17].enable();
	sam4l::gpio::PA[17].enable_output();
	sam4l::gpio::PA[17].clear();


    let mut chip = sam4l::chip::Sam4l::new();
    chip.mpu().enable_mpu();

    kernel::main(audio_module, &mut chip, load_processes());
}