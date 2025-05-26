.PHONY: all fclean clean re

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror -I.

SOURCE = ft_printf.c
OBJECTS = ${SOURCE:.c=.o}

all: $(NAME)

$(NAME): $(OBJECTS)
	ar src $(NAME) $(OBJECTS)
$(SOURCE):
	$(CLAGS) -c $(SOURCE)
clean:
	rm -f $(OBJECTS)
fclean: clean
	rm -f $(NAME)
re: clean all
