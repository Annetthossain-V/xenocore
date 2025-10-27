#include "util/logger.h"
#include "util/basic.h"
#include "xeno.h"

_Bool xenof(const char* filename);
_Bool xenob();

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

  for (int i = 1; i < argc; i++) {
    if (!xenof(argv[i])) {
      log_error("reading file failed");
      return 1;
    }
  }
  if (!xenob()) return 1;

  if (xeno_fini() != 0) {
    log_error("Unable to finish xenocore");
    return 1;
  }
  return 0;
}
#endif

_Bool xenof(const char* filename) {
  long size = fsize(filename);
  if (size < 0) return 0;
  

  return 1;
}

_Bool xenob() {
  return 1;
}
