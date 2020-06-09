#
# makefile for image and color utilities C library
#
#

CC = gcc -std=gnu99
FLAGS = -Wall
INCLUDES = -lm

imageDriver: imageUtils.o colorUtils.o imageDriver.c
	$(CC) $(INCLUDES) imageUtils.o colorUtils.o imageDriver.c -o imageDriver $(FLAGS)

imageUtils.o: imageUtils.c imageUtils.h
	$(CC) $(INCLUDES) -c imageUtils.c -o imageUtils.o $(FLAGS)

colorUtilsTester: colorUtils.o colorUtilsTester.c
	$(CC) colorUtils.o colorUtilsTester.c -o colorUtilsTester $(INCLUDES) $(FLAGS)

colorUtils.o: colorUtils.c colorUtils.h
	$(CC) $(INCLUDES) -c colorUtils.c -o colorUtils.o $(FLAGS)

clean:
	rm -f *~ *.o
