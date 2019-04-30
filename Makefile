CC = tcc

TARGET = stlviewer
SOURCES = stl_viewer.c stl.c trackball.c
OBJECTS = $(SOURCES:.c=.o)

LIBS = -lglut -lGL -lm
CFLAGS = -Wall -Werror -O2

.PHONY: all clean

all: $(TARGET)

*.o: *.c
	$(CC) $(CFLAGS) -c $@ $<

$(TARGET): $(OBJECTS)
	$(CC) $(LIBS) -o $@ $^

clean:
	rm -f *.o $(TARGET)
