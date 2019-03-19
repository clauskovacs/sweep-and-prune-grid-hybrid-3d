############################################################
CXX = g++
CXXFLAGS = -g -Wall -Wextra -pedantic -lGL -lGLU -lglut -lGLEW -lpng -std=c++11
############################################################

OUTPUT_NAME = SAP_grid_hybrid

all: main.o grid_SaP.o
	$(CXX) $(CXXFLAGS) -o $(OUTPUT_NAME) main.o grid_SaP.o

main.o: main.cpp grid_SaP.h
	$(CXX) $(CXXFLAGS) -c main.cpp

grid_SaP.o: grid_SaP.h

clean:
	$(RM) main.o grid_SaP.o

run: $(OUTPUT_NAME)
	./$(OUTPUT_NAME)

valgrind: $(OUTPUT_NAME)
	valgrind --tool=memcheck --track-origins=yes --leak-check=yes --num-callers=20 --track-fds=yes --suppressions=minimal.supp ./$(OUTPUT_NAME)
