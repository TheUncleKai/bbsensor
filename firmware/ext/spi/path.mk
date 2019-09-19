# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Object File

OBJS := ${SOURCES:.cpp=.cpp.o}
OBJS := ${subst $(ESP8266_SPI),$(OBJDIR),$(OBJS)}

ARS := $(OBJS:.o=.ar)
