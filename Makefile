CC=clang++
CFLAGS=-std=c++20 -fcolor-diagnostics -fansi-escape-codes -g -Wall -Wno-deprecated
INCLUDE=-I./dependencies/include
LIB=-L./dependencies/library ./dependencies/library/libglfw.3.3.dylib ./dependencies/library/libassimp.5.3.0.dylib
BIN=app
BINDIR=bin
SRC=src
OBJ=obj
SRCS=$(wildcard $(SRC)/*.cpp)
OBJS=$(patsubst $(SRC)/%.cpp, $(OBJ)/%.o, $(SRCS))

all: $(BIN)

$(BIN): $(OBJS)
	mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) $(LIB) $^ -o $(BINDIR)/$@

$(OBJ)/%.o: $(SRC)/%.cpp
	mkdir -p $(OBJ)
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

run: $(BIN)
	./$(BINDIR)/$(BIN)

clean:
	rm -rf $(BINDIR)/* $(OBJ)/*