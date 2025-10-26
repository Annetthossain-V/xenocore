#include "util/logger.h"
#include "xeno.h"

#ifndef _XENO_LIBRARY_
int main(int argc, char** argv) {
  if (argc < 2) {
    log_error("No file specified!");
    return 1;
  }

  if (xeno_init() != 0) {
    log_error("Unable to initialize xenocore!");
    return 1;
  }

  if (xeno_fini() != 0) {
    log_error("Unable to finish xenocore");
    return 1;
  }
  return 0;
}
#endif
