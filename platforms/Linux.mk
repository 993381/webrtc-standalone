RENDERNAME=renderSDL2

CFLAGS = \
-DDEBUG -D_DEBUG -DTRACING \
-DOS_POSIX=1 \
-DOS_LINUX=1 \
-DUSE_FAKE_MEDIA_STREAMS \
-DUSE_FAKE_PCOBSERVER \
-DNR_SOCKET_IS_VOID_PTR \
-DHAVE_STRDUP \
-DMOZ_GLUE_IN_PROGRAM \
-DNO_NSPR_10_SUPPORT \
-DNDEBUG \
-DTRIMMED \
-DMOZILLA_CLIENT \
-DMOZILLA_MEDIA_STANDALONE \
-fPIC \
-MD \
-MP \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Werror=int-to-pointer-cast \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wcast-align \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-g \
-Os \
-freorder-blocks \
-fomit-frame-pointer

LFLAGS = \
-Wall \
-Wpointer-arith \
-Woverloaded-virtual \
-Werror=return-type \
-Werror=int-to-pointer-cast \
-Wtype-limits \
-Wempty-body \
-Wsign-compare \
-Wno-invalid-offsetof \
-Wcast-align \
-fno-exceptions \
-fno-strict-aliasing \
-fno-rtti \
-fno-exceptions \
-fno-math-errno \
-std=gnu++0x \
-pthread \
-pipe \
-DNDEBUG \
-DTRIMMED \
-g \
-Os \
-freorder-blocks \
-fomit-frame-pointer \
-lpthread \
-Wl,-z,noexecstack \
-Wl,-z,text \
-Wl,--build-id \
-B $(GECKO_OBJ)/build/unix/gold \
-Wl,-rpath-link,$(GECKO_OBJ)/dist/lib \
-Wl,-rpath-link,/usr/local/lib \
-L$(GECKO_OBJ)/dist/lib \
-lssl \
-lcryptohi \
-lplc4 \
-lnspr4 \
-lcertdb \
-lcerthi \
-lpkixpki \
-lpkixtop \
-lpkixchecker \
-lpkixstore \
-lpkixcrlsel \
-lpkixpki \
-lpkixresults \
-lpkixutil \
-lpkixparams \
-lpkixcertsel \
-lpkixsystem \
-lpkixchecker \
-lpkixmodule \
-lnsspki \
-lnssdev \
-lnssb \
-lnss \
-lpk11wrap \
-lcerthi \
-lnssutil \
-lplds4 \
-rdynamic \
-lXext \
-lXcomposite \
-lXdamage \
-lXfixes \
-lX11 \
-lmozalloc \
-ldl

#$(GECKO_OBJ)/memory/mozalloc/Unified_cpp_memory_mozalloc0.o \

CFLAGS+=-I$(SDL_INCLUDE_PATH) -D_THREAD_SAFE
LFLAGS+=-L$(SDL_LIB_PATH) -lSDL2 -lGL
