MAIN := tu_optimize
SRCS := $(wildcard *.cpp)
OBJS := $(patsubst %.cpp,obj/%.o,$(SRCS))

CPPFLAGS := -Wall -Werror -std=gnu++11 -O3
LDFLAGS := -lboost_system -lboost_thread -lboost_filesystem -lboost_chrono

all: $(MAIN)

obj/%.o: %.cpp
	$(CXX) $(CPPFLAGS) -o $@ -c $<

$(MAIN): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

clean:
	del /q $(MAIN).exe obj\*.o
