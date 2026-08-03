#include "rgt_platform.h"
#include <stdio.h>
#include <stdlib.h>

rgt_result rgt_copy_file(const char *src, const char *dst)
{
    char command[512];

    snprintf(command, sizeof(command),
        "copy \"%s\" \"%s\"",
        src, dst);

    system(command);

    return RGT_SUCCESS;
}

rgt_result rgt_umd_replace(const char *iso, const char *file, const char *replacement)
{
    char command[1024];

#if defined(_WIN64)
    const char *umd = "./umd-replace-win64.exe";
#else
    const char *umd = "./umd-replace-win32.exe";
#endif

    snprintf(command, sizeof(command),
        "\"%s\" \"%s\" \"%s\" \"%s\"",
        umd, iso, file, replacement);

    system(command);

    return RGT_SUCCESS;
}