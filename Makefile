######################################################################
#  teensylc_lib/teensylc/fibers/Makefile
#  Warren Gay ve3wwg	Fri Feb 13 20:39:34 2015
#
# This Makefile is intended to be used as part of the teensylc_lib
# project. No Makefile is required for Arduino IDE use.
######################################################################

include $(CURDIR)/../../Makefile.conf

CXX_FILES 	:= $(wildcard *.cpp)
OBJS 		:= $(CXX_FILES:.cpp=.o) 

all:	$(LIB_DIR)/libfibers.a

$(LIB_DIR)/libfibers.a: $(OBJS)
	@rm -f $(LIB_DIR)/libfibers.a
	$(AR) cr $(LIB_DIR)/libfibers.a $(OBJS)

clean:
	rm -f *.o

distclean: clean
	rm -f libfibers.a $(LIB_DIR)/libfibers.a *.d

# End teensylc/Makefile
