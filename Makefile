# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omartine <omartine@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/02 18:48:18 by omartine          #+#    #+#              #
#    Updated: 2022/06/02 18:49:48 by omartine         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= minishell
CC				= gcc
RM				= rm -rf
CFLAGS			= -Wall -Wextra -Werror
MAKE			= make


SRCS = main.c

OBJS = $(SRCS:.c=.o)

all:			$(NAME)

$(NAME):		$(OBJS)
				$(CC) $(OBJS) -o $(NAME)

clean:
				$(RM) $(OBJS) $(BONUS_O)
fclean:			clean
				$(RM) $(NAME) $(NAME_BONUS)

re:				fclean $(NAME)

bonus:			$(NAME_BONUS)

$(NAME_BONUS):	$(BONUS_O)
				$(CC) $(CFLAGS) $(BONUS_O) -o $(NAME_BONUS)

rebonus:		fclean $(NAME) $(NAME_BONUS)

.PHONY:			all clean fclean re bonus
