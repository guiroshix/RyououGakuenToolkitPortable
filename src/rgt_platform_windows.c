rgt_result rgt_copy_file(const char *src, const char *dst)
{
    char command[512];

    snprintf(command, sizeof(command),
        "copy \"%s\" \"%s\"",
        src, dst);

    system(command);

    return RGT_SUCCESS;
}
