CC_linux := gcc
CC_win_32bit := i686-w64-mingw32-gcc-5.3-win32
CC_win_64bit := x86_64-w64-mingw32-gcc-5.3-win32
CFLAGS := -O2 -pipe -march=native -fomit-frame-pointer -ggdb
LDFLAGS := -Wl,--as-needed
OUT_linux := pngdefry_linux
OUT_win_32bit := pngdefry_i686.exe
OUT_win_64bit := pngdefry_x64.exe


pngdefry: miniz.c pngdefry.c
	$(CC_linux) -o $(OUT_linux) $(CFLAGS) $(LDFLAGS) pngdefry.c
	$(CC_win_32bit) -o $(OUT_win_32bit) $(CFLAGS) $(LDFLAGS) pngdefry.c
	$(CC_win_64bit) -o $(OUT_win_64bit) $(CFLAGS) $(LDFLAGS) pngdefry.c

clean:
	rm -f $(OUT_linux)
	rm -f $(OUT_win_32bit)
	rm -f $(OUT_win_64bit)
