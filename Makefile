# Nome do executável
EXEC = jogo

# Diretórios
SRC_DIR = src
INCLUDE_DIR = include

# Compilador e flags
CC = gcc
CFLAGS = -Wall -I$(INCLUDE_DIR)

# Arquivos fonte e objetos
SRCS = $(SRC_DIR)/keyboard.c $(SRC_DIR)/main.c $(SRC_DIR)/screen.c $(SRC_DIR)/timer.c
OBJS = $(SRCS:.c=.o)

# Regra padrão
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

# Regra para compilar arquivos .c em .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpeza
clean:
	rm -f $(OBJS) $(EXEC)
