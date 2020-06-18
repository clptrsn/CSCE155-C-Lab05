#
# makefile for image and color utilities C library
#
#

CC = gcc -std=gnu99
FLAGS = -Wall
INCLUDES = -lm

imageDriver: imageUtils.o colorUtils.o imageDriver.c
	$(CC) imageUtils.o colorUtils.o imageDriver.c -o imageDriver $(INCLUDES) $(FLAGS)

imageUtils.o: imageUtils.c imageUtils.h
	$(CC) -c imageUtils.c -o imageUtils.o $(INCLUDES) $(FLAGS)

colorUtilsTester: colorUtils.o colorUtilsTester.c
	$(CC) colorUtils.o colorUtilsTester.c -o colorUtilsTester $(INCLUDES) $(FLAGS)

colorUtils.o: colorUtils.c colorUtils.h
	$(CC) -c colorUtils.c -o colorUtils.o $(INCLUDES) $(FLAGS)

clean:
	rm -f *~ *.o
