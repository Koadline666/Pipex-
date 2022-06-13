# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afenzl <afenzl@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/08 15:27:07 by afenzl            #+#    #+#              #
#    Updated: 2022/06/13 17:36:47 by afenzl           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC := cc
CFLAGS := -Wall -Wextra -Werror
RM := rm -f

NAME = pipex
SRC =  pipex.c utils.c get_path.c error.c
BONSRC = pipex_bonus.c utils_bonus.c get_path_bonus.c error_bonus.c
LIBFT = ./libft/libft.a
LIBFTSRC = ./libft/ft_memset.c		\
		./libft/ft_bzero.c		\
		./libft/ft_memcpy.c		\
		./libft/ft_memmove.c	\
		./libft/ft_memchr.c		\
		./libft/ft_memcmp.c		\
		./libft/ft_strlen.c		\
		./libft/ft_isalpha.c	\
		./libft/ft_isdigit.c	\
		./libft/ft_isalnum.c	\
		./libft/ft_isascii.c	\
		./libft/ft_isprint.c	\
		./libft/ft_toupper.c	\
		./libft/ft_tolower.c	\
		./libft/ft_strchr.c		\
		./libft/ft_strrchr.c	\
		./libft/ft_strncmp.c	\
		./libft/ft_strlcpy.c	\
		./libft/ft_strlcat.c	\
		./libft/ft_strnstr.c	\
		./libft/ft_atoi.c		\
		./libft/ft_calloc.c		\
		./libft/ft_strdup.c		\
		./libft/ft_substr.c		\
		./libft/ft_strjoin.c 	\
		./libft/ft_strtrim.c	\
		./libft/ft_split.c		\
		./libft/ft_itoa.c		\
		./libft/ft_strmapi.c	\
		./libft/ft_striteri.c	\
		./libft/ft_putchar_fd.c	\
		./libft/ft_putstr_fd.c	\
		./libft/ft_putendl_fd.c	\
		./libft/ft_putnbr_fd.c	\
		./libft/ft_lstnew.c			\
		./libft/ft_lstadd_front.c	\
		./libft/ft_lstsize.c		\
		./libft/ft_lstlast.c		\
		./libft/ft_lstadd_back.c	\
		./libft/ft_lstclear.c		\
		./libft/ft_lstdelone.c		\
		./libft/ft_lstiter.c		\
		./libft/ft_lstmap.c			\
		./libft/get_next_line/get_next_line.c	\
		./libft/get_next_line/get_next_line_utils.c	\
		
OBJ = $(SRC:.c=.o)
BONOBJ = $(BON:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(LIBFTSRC)
	make bonus -C ./libft
	$(CC) $(CFLAGS) $(LIBFT) $(OBJ) -o $(NAME)

clean: clean
	$(RM) $(OBJ)
	make fclean -C ./libft/

fclean: clean
	$(RM) $(NAME)

re: fclean all

bonus: $(BONOBJ) $(LIBFTSRC)
	make bonus -C ./libft
	$(CC) $(CFLAGS) $(LIBFT) $(BONSRC) -o $(NAME)

.PHONY: all clean fclean re