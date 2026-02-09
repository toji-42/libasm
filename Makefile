NAME = libasm.a
NASM = nasm
NASM_FLAG = -f elf64
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s
OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	rm -f $(OBJS)

fclean:
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
