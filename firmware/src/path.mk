# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Object File

OBJS := ${SOURCES:.cpp=.o}
OBJS := $(addprefix $(OBJDIR)/, $(OBJS))

DEPS := $(OBJS:.o=.d)
