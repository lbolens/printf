NAME    = libftprintf.a
SRC     = \
			ft_printf.c ft_put_hex_low.c ft_put_hex_up.c ft_put_pointer.c \
			ft_put_unsigned_dec_10.c ft_putchar_printf.c ft_putnbr_printf.c \
			ft_putstr_printf.c

OBJ     = $(SRC:.c=.o)

CC      = gcc
CFLAGS  = -Wall -Wextra -Werror
AR 		= ar rcs
RM      = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re