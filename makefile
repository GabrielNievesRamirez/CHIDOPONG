CXX=g++
CXXFLAGS=-std=c++11 -Wall
LIBS=-lraylib

SRCDIR=src
INCDIR=include
BINDIR=bin

SOURCES=$(wildcard $(SRCDIR)/*.cpp)
OBJECTS=$(patsubst $(SRCDIR)/%.cpp, $(BINDIR)/%.o, $(SOURCES))

EXECUTABLE=$(BINDIR)/pong_game

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LIBS)

$(BINDIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) -I$(INCDIR) -c $< -o $@

clean:
	rm -f $(BINDIR)/*.o $(EXECUTABLE)
