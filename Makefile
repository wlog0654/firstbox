# Makefile
CXX = g++
CXXFLAGS = -Wall -g -Iinclude
TARGET = HelloWorld
OBJECTS = src/greeting.o main.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET)

src/greeting.o: src/greeting.cpp include/greeting.h
	$(CXX) $(CXXFLAGS) -c src/greeting.cpp -o src/greeting.o

main.o: main.cpp include/greeting.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

clean:
	rm -f $(OBJECTS) $(TARGET)
