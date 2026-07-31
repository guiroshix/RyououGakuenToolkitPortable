#ifndef RGT_PLATFORM_H
#define RGT_PLATFORM_H

#include "rgt_result.h"

rgt_result rgt_copy_file(const char *src, const char *dst);
rgt_result rgt_umd_replace(const char *iso, const char *file, const char *replacement);

#endif
