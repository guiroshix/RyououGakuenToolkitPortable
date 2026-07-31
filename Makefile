CC = gcc

CFLAGS = -g \
	-Ihdr \
	-Ilibhdr \
	-Ilibhdr/libpng \
	-Ilibhdr/zlib

LIBS = -lpng -lz -lm

COMMON = \
	src/rgt_array.c \
	src/rgt_arena.c \
	src/rgt_binary_data.c \
	src/rgt_cpk.c \
	src/rgt_gzip.c \
	src/rgt_image.c \
	src/rgt_load_save_file.c \
	src/rgt_load_save_png.c \
	src/rgt_rgo_checksum.c \
	src/rgt_rgo_font.c \
	src/rgt_rgo_image.c \
	src/rgt_rgo_script.c \
	src/rgt_string.c \
	src/rgt_utf8.c


all: \
	RGT_RGO_Patch_Builder \
	RGOFontExtractor \
	RGOScriptExtractor \
	CPKExtractor \
	RGOImageExtractor \
	NIMImageExtractor \
	ImageColorReducer \
	RGOFontGenerator \
	RGOTextPreview \
	ScriptMerger


RGT_RGO_Patch_Builder:
	$(CC) $(CFLAGS) \
	apps/RGT_RGO_Patch_Builder/src/build.c \
	apps/RGT_RGO_Patch_Builder/src/header_data_implementation.c \
	apps/RGT_RGO_Patch_Builder/src/script_0_implementation.c \
	apps/RGT_RGO_Patch_Builder/src/script_1_implementation.c \
	$(COMMON) \
	-Iapps/RGT_RGO_Patch_Builder/hdr \
	-o $@ \
	$(LIBS)


RGOFontExtractor:
	$(CC) $(CFLAGS) \
	apps/RGOFontExtractor/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


RGOScriptExtractor:
	$(CC) $(CFLAGS) \
	apps/RGOScriptExtractor/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


CPKExtractor:
	$(CC) $(CFLAGS) \
	apps/CPKExtractor/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


RGOImageExtractor:
	$(CC) $(CFLAGS) \
	apps/RGOImageExtractor/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


NIMImageExtractor:
	$(CC) $(CFLAGS) \
	apps/NIMImageExtractor/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


ImageColorReducer:
	$(CC) $(CFLAGS) \
	apps/ImageColorReducer/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


RGOFontGenerator:
	$(CC) $(CFLAGS) \
	apps/RGOFontGenerator/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


RGOTextPreview:
	$(CC) $(CFLAGS) \
	apps/RGOTextPreview/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


ScriptMerger:
	$(CC) $(CFLAGS) \
	apps/ScriptMerger/src/*.c \
	$(COMMON) \
	-o $@ \
	$(LIBS)


clean:
	rm -f \
	RGT_RGO_Patch_Builder \
	RGOFontExtractor \
	RGOScriptExtractor \
	CPKExtractor \
	RGOImageExtractor \
	NIMImageExtractor \
	ImageColorReducer \
	RGOFontGenerator \
	RGOTextPreview \
	ScriptMerger
