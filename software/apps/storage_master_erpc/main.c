#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <stdbool.h>

//tock includes
#include "tock.h"
#include "console.h"
#include "timer.h"
#include "i2c_master_slave.h"
#include "gpio.h"
#include "storage_master.h"

#define BUFFER_SIZE 64

//i2c buffers
uint8_t slave_write_buf[BUFFER_SIZE];
uint8_t slave_read_buf[BUFFER_SIZE];

uint8_t request_buf[BUFFER_SIZE];
uint8_t return_buf[BUFFER_SIZE];
uint8_t return_address;

uint8_t reg = 0x00;
#define RPC_REQUEST 0x01
#define RPC_RETURN 0x02
#define RPC_RETURN_ADDRESS 0x03


static void i2c_master_slave_callback (
    int callback_type,
    int length,
    int unused __attribute__ ((unused)),
    void * callback_args __attribute__ ((unused))) {

    if(callback_type == CB_SLAVE_READ_REQUEST) {
        //this isn't doing anything right now
        return;
    } else if (callback_type == CB_SLAVE_READ_COMPLETE) {
        return;
    } else if (callback_type == CB_SLAVE_WRITE) {
        reg = slave_write_buf[0];
        if(length > 1) {
            //assume this is a real request
            if(reg == RPC_REQUEST) {
                //this is an rpc request
                //
                //copy the rpc request to the request buffer
                memcpy(request_buf,slave_write_buf+1,BUFFER_SIZE-1);
                memcpy(slave_read_buf,request_buf,BUFFER_SIZE);

                //I know that this write is occuring. I am observing
                //the edison wakeup pin
                //wakeup the edison to tell it that it has an rpc request
                storage_master_wakeup_edison();

            } else if(reg == RPC_RETURN) {
                //this is an rpc return from the edison
                //copy the rpc return to the return buffer
                memcpy(return_buf,slave_write_buf+1,length-1);
                memcpy(slave_read_buf,return_buf,BUFFER_SIZE);

                //alert the module that the request has returned
                //should this happen over i2c?? I would like to just set the
                //alert pin but that's on another microcontroller...
            } else if(reg == RPC_RETURN_ADDRESS) {
                memcpy(&return_address,slave_write_buf+1,1);
                //memcpy(slave_read_buf,&return_address,BUFFER_SIZE);
            }
        } else {
            //just setting the register - asume it's to read it soon
            if(reg == RPC_REQUEST) {
                memcpy(slave_read_buf,request_buf,BUFFER_SIZE);
                //i2c_master_slave_read_ready(BUFFER_SIZE);
            } else if(reg == RPC_RETURN) {
                memcpy(slave_read_buf,return_buf,BUFFER_SIZE);
                //i2c_master_slave_read_ready(BUFFER_SIZE);
            } else if(reg == RPC_RETURN_ADDRESS) {
                //no one should ever read this
            }
        }
}

int main () {
    storage_master_enable_edison();

    i2c_master_slave_set_slave_write_buffer(slave_write_buf, BUFFER_SIZE);
    i2c_master_slave_set_slave_read_buffer(slave_read_buf, BUFFER_SIZE);

    //low configure i2c slave to listen
    i2c_master_slave_set_callback(i2c_master_slave_callback, NULL);
    i2c_master_slave_set_slave_address(0x19);

    //listen
    i2c_master_slave_listen();
}