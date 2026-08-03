#include "rgt_platform.h"
#include <stdio.h>
#include <stdlib.h>

rgt_result rgt_copy_file(const char *src, const char *dst)
{
    char command[512];

    snprintf(command, sizeof(command),
        "cp \"%s\" \"%s\"",
        src, dst);

    system(command);

    return RGT_SUCCESS;
}

rgt_result rgt_umd_replace(const char *iso, const char *file, const char *replacement)
{
    char command[1024];

#if defined(__aarch64__) || defined(__arm__)
    const char *umd = "./umd-replace-linux-arm64";
#else
    const char *umd = "./umd-replace-linux-x86_64";
#endif

    snprintf(command, sizeof(command),
        "\"%s\" \"%s\" \"%s\" \"%s\"",
        umd, iso, file, replacement);

    system(command);

    return RGT_SUCCESS;
}