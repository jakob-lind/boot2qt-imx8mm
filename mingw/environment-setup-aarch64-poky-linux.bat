set SDKROOT=%~dp0%
set SDKTARGETSYSROOT=%SDKROOT%\sysroots\aarch64-poky-linux
set SDKTARGETSYSROOT=%SDKTARGETSYSROOT:\=/%
set PATH=%SDKROOT%\sysroots\i686-pokysdk-mingw32\usr\bin;%SDKROOT%\sysroots\i686-pokysdk-mingw32\usr\bin\..\i686-pokysdk-mingw32\bin;%SDKROOT%\sysroots\i686-pokysdk-mingw32\usr\bin\aarch64-poky-linux;%SDKROOT%\sysroots\i686-pokysdk-mingw32\usr\bin\aarch64-poky-linux-musl;%PATH%
set PKG_CONFIG_SYSROOT_DIR=%SDKTARGETSYSROOT%
set PKG_CONFIG_PATH=%SDKTARGETSYSROOT%\usr\lib\pkgconfig
set CONFIG_SITE=%SDKROOT%\site-config-aarch64-poky-linux
set OECORE_NATIVE_SYSROOT=%SDKROOT%\sysroots\i686-pokysdk-mingw32
set OECORE_TARGET_SYSROOT=%SDKTARGETSYSROOT%
set OECORE_ACLOCAL_OPTS=-I %SDKROOT%\sysroots\i686-pokysdk-mingw32\usr\share\aclocal
set OECORE_BASELIB=lib
set OECORE_TARGET_ARCH=aarch64
set OECORE_TARGET_OS=linux
set CC=aarch64-poky-linux-gcc  -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=%SDKTARGETSYSROOT%
set CXX=aarch64-poky-linux-g++  -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=%SDKTARGETSYSROOT%
set CPP=aarch64-poky-linux-gcc -E  -fstack-protector-strong  -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security --sysroot=%SDKTARGETSYSROOT%
set AS=aarch64-poky-linux-as 
set LD=aarch64-poky-linux-ld  --sysroot=%SDKTARGETSYSROOT%
set GDB=aarch64-poky-linux-gdb
set STRIP=aarch64-poky-linux-strip
set RANLIB=aarch64-poky-linux-ranlib
set OBJCOPY=aarch64-poky-linux-objcopy
set OBJDUMP=aarch64-poky-linux-objdump
set AR=aarch64-poky-linux-ar
set NM=aarch64-poky-linux-nm
set M4=m4
set TARGET_PREFIX=aarch64-poky-linux-
set CONFIGURE_FLAGS=--target=aarch64-poky-linux --host=aarch64-poky-linux --build=i686-linux --with-libtool-sysroot=%SDKTARGETSYSROOT%
set CFLAGS= -O2 -pipe -g -feliminate-unused-debug-types 
set CXXFLAGS= -O2 -pipe -g -feliminate-unused-debug-types 
set LDFLAGS=-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong -Wl,-z,relro,-z,now
set CPPFLAGS=
set KCFLAGS=--sysroot=%SDKTARGETSYSROOT%
set OECORE_DISTRO_VERSION=3.0.3
set OECORE_SDK_VERSION=3.0.3
set ARCH=arm64
set CROSS_COMPILE=aarch64-poky-linux-

@REM Append environment subscripts

@IF EXIST %OECORE_TARGET_SYSROOT%\environment-setup.d (
   FOR %%x IN (%OECORE_TARGET_SYSROOT%\environment-setup.d\*.bat) DO call "%%x"
)

@IF EXIST %OECORE_NATIVE_SYSROOT%\environment-setup.d (
   FOR %%x IN (%OECORE_NATIVE_SYSROOT%\environment-setup.d\*.bat) DO call "%%x"
)
@%COMSPEC% /C exit 0 > NUL
