#include "data_table.h"
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>

static uint8_t** bytes_table = NULL;
static uint32_t bytes_cap = 0;
static uint32_t bytes_len = 0;

_Bool add_bytes_table(uint8_t *stream, uint32_t index) {
  if (index != bytes_len) {
    return 0;
  }

  return 1;
}

void data_table_init() {
  bytes_table = (uint8_t**) malloc(sizeof(uint8_t*) * 6);
  bytes_cap = 6;
  bytes_len = 0;

}

void data_table_deinit() {
  for (uint32_t i = 0; i < bytes_len; i++) {
    free(bytes_table[i]);
  } free(bytes_table);


}
