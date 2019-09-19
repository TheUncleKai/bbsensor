# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Object File

OBJS_CORE_ASM := ${SOURCES_CORE_ASM:.S=.S.o}
OBJS_CORE_ASM := ${subst $(ESP8266_CORE),$(OBJDIR),$(OBJS_CORE_ASM)}

OBJS_CORE_CPP := ${SOURCES_CORE_CPP:.cpp=.cpp.o}
OBJS_CORE_CPP := ${subst $(ESP8266_CORE),$(OBJDIR),$(OBJS_CORE_CPP)}

OBJS_LIBB64 := ${SOURCES_LIBB64:.cpp=.cpp.o}
OBJS_LIBB64 := ${subst $(ESP8266_CORE)/libb64,$(OBJDIR),$(OBJS_LIBB64)}

OBJS_MALLOC := ${SOURCES_MALLOC:.cpp=.cpp.o}
OBJS_MALLOC := ${subst $(ESP8266_CORE)/umm_malloc,$(OBJDIR),$(OBJS_MALLOC)}

OBJS_SPIFFS := ${SOURCES_SPIFFS:.cpp=.cpp.o}
OBJS_SPIFFS := ${subst $(ESP8266_CORE)/spiffs,$(OBJDIR),$(OBJS_SPIFFS)}

OBJS := $(OBJS_CORE_ASM) $(OBJS_CORE_CPP) $(OBJS_SPIFFS) $(OBJS_LIBB64) $(OBJS_MALLOC)

ARS := $(OBJS:.o=.ar)
