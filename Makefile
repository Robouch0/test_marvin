SRC	=	$(addprefix src/,	\
		main.c)

CC	=	gcc

OBJ	=	$(SRC:.c=.o)

CFLAGS	=	-Wall -Wextra

CPPFLAGS	=	-Iinclude

NAME	=	test

all	:	$(NAME)

$(NAME)		:	$(OBJ)
		$(CC) -o $(NAME) $(OBJ)

clean	 :
	$(RM) *~
	$(RM) $(OBJ)

fclean	:	clean
	$(RM) $(NAME)

re	:	fclean all

.PHONY	:	all clean fclean re
