# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Object File

OBJS_CORE_ASM := ${SOURCES_CORE_ASM:.S=.o}
OBJS_CORE_ASM := ${subst $(ESP8266_CORE),$(OBJDIR),$(OBJS_CORE_ASM)}

OBJS_CORE_CPP := ${SOURCES_CORE_CPP:.cpp=.o}
OBJS_CORE_CPP := ${subst $(ESP8266_CORE),$(OBJDIR),$(OBJS_CORE_CPP)}

OBJS_LIBB64 := ${SOURCES_LIBB64:.cpp=.o}
OBJS_LIBB64 := ${subst $(ESP8266_CORE)/libb64,$(OBJDIR),$(OBJS_LIBB64)}

OBJS_MALLOC := ${SOURCES_MALLOC:.cpp=.o}
OBJS_MALLOC := ${subst $(ESP8266_CORE)/umm_malloc,$(OBJDIR),$(OBJS_MALLOC)}

OBJS_SPIFFS := ${SOURCES_SPIFFS:.cpp=.o}
OBJS_SPIFFS := ${subst $(ESP8266_CORE)/spiffs,$(OBJDIR),$(OBJS_SPIFFS)}

OBJS := $(OBJS_CORE_ASM) $(OBJS_CORE_CPP) $(OBJS_SPIFFS) $(OBJS_LIBB64) $(OBJS_MALLOC)

ARS := $(OBJS:.o=.ar)

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Dependencies

DEP_CORE_CPP := ${SOURCES_CORE_CPP:.cpp=.d}
DEP_CORE_CPP := ${subst $(ESP8266_CORE),$(OBJDIR),$(DEP_CORE_CPP)}

DEP_LIBB64 := ${SOURCES_LIBB64:.cpp=.d}
DEP_LIBB64 := ${subst $(ESP8266_CORE)/libb64,$(OBJDIR),$(DEP_LIBB64)}

DEP_MALLOC := ${SOURCES_MALLOC:.cpp=.d}
DEP_MALLOC := ${subst $(ESP8266_CORE)/umm_malloc,$(OBJDIR),$(DEP_MALLOC)}

DEP_SPIFFS := ${SOURCES_SPIFFS:.cpp=.d}
DEP_SPIFFS := ${subst $(ESP8266_CORE)/spiffs,$(OBJDIR),$(DEP_SPIFFS)}

DEPS := $(DEP_CORE_CPP) $(DEP_SPIFFS) $(DEP_LIBB64) $(DEP_MALLOC)
