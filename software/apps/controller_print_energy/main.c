#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <stdbool.h>

#include "tock.h"
#include "console.h"
#include "signpost_energy.h"
#include "i2c_selector.h"
#include "controller.h"
#include "timer.h"

void print_data (int module, int energy) {
  char buf[64];
  int int_energy = signpost_ltc_to_uAh(energy, POWER_MODULE_RSENSE, POWER_MODULE_PRESCALER);
  if (module == 3) {
    sprintf(buf, "Controller energy: %i uAh\n", int_energy);
  } else if (module == 4) {
    sprintf(buf, "Linux energy: %i uAh\n", int_energy);
  } else {
    sprintf(buf, "Module %i energy: %i uAh\n", module, int_energy);
  }
  putstr(buf);
}

int main () {
  int energy;

  signpost_energy_init();

  controller_init_module_switches();
  controller_all_modules_enable_power();
  controller_all_modules_enable_i2c();

  int i;

  while (1) {

    putstr("\nChecking Energy\n");

    for (i=0; i<8; i++) {
      if (i == 3 || i == 4) continue;

      energy = signpost_energy_get_module_energy(i);
      print_data(i, energy);
    }

    energy = signpost_energy_get_controller_energy();
    print_data(3, energy);

    energy = signpost_energy_get_linux_energy();
    print_data(4, energy);

    delay_ms(500);
  }
}