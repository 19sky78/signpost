#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>

#include "tock.h"
#include "console.h"
#include "timer.h"
#include "rng.h"
#include "signbus_app_layer.h"
#include "signbus_io_interface.h"

#define INTERVAL_IN_MS 2000

static uint8_t key[32];

static uint8_t sender_address;
static signbus_frame_type_t frame_type;
static signbus_api_type_t api_type;
static uint8_t message_type;
static size_t message_length;
static uint8_t message[1024];

static bool recent_message = false;

static void cb(size_t length __attribute__((unused)) ) {
    // Print data for this received message
    printf("from: %02x, frame_type: %02x, api_type: %02x, message_type: %02x, message_len: %d, %02x\n",
            sender_address, frame_type, api_type, message_type, message_length, message_length);
    if ((frame_type == NotificationFrame) && (api_type == 0x00) && (message_type == 0x00)) {
        printf("message: >>>%s<<<\n", message);
    } else {
        printf("unknown message: 0x");
        for (size_t i = 0; i < message_length; i++) {
            printf("%02x", message[i]);
        }
        printf("\n");
    }

    // Tickle our pseduo-watchdog
    recent_message = true;

    // Listen for another message (re-using the same buffers)
    signbus_app_recv_async(cb, key, &sender_address,
            &frame_type, &api_type, &message_type,
            &message_length, message);
}


int main(void) {
    memset(key, 0, 32);
    strcpy((char *) key, "this is a key");
    printf("\n###\n\n\ntest app stack\n");

    printf("RECEIVER: Begin listening\n\n");

    signbus_io_init(SIGNBUS_TEST_RECEIVER_I2C_ADDRESS);
    signbus_app_recv_async(cb, key, &sender_address,
            &frame_type, &api_type, &message_type,
            &message_length, message);
    while(1) {
        delay_ms(INTERVAL_IN_MS);
        if (recent_message == false) {
            printf("RECEIVER: No message in %d ms\n", INTERVAL_IN_MS);
        } else {
            recent_message = false;
        }
    }
}