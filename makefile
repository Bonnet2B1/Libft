# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: edelarbr <edelarbr@student.42mulhouse.fr>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/02 09:22:16 by marvin            #+#    #+#              #
#    Updated: 2026/04/24 09:10:00 by edelarbr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#
## First part
#

SRCS			+=	srcs/ft_isalpha.c
SRCS			+=	srcs/ft_isdigit.c
SRCS			+=	srcs/ft_isalnum.c
SRCS			+=	srcs/ft_isascii.c
SRCS			+=	srcs/ft_isprint.c
SRCS			+=	srcs/ft_strlen.c
SRCS			+=	srcs/ft_memset.c
SRCS			+=	srcs/ft_bzero.c
SRCS			+=	srcs/ft_memcpy.c
SRCS			+=	srcs/ft_memmove.c
SRCS			+=	srcs/ft_strlcpy.c
SRCS			+=	srcs/ft_strlcat.c
SRCS			+=	srcs/ft_toupper.c
SRCS			+=	srcs/ft_tolower.c
SRCS			+=	srcs/ft_strchr.c
SRCS			+=	srcs/ft_strrchr.c
SRCS			+=	srcs/ft_strncmp.c
SRCS			+=	srcs/ft_memchr.c
SRCS			+=	srcs/ft_memcmp.c
SRCS			+=	srcs/ft_strnstr.c
SRCS			+=	srcs/ft_atoi.c
SRCS			+=	srcs/ft_calloc.c
SRCS			+=	srcs/ft_strdup.c

#
## Second part
#

SRCS			+=	srcs/ft_substr.c
SRCS			+=	srcs/ft_strjoin.c
SRCS			+=	srcs/ft_strtrim.c
SRCS			+=	srcs/ft_split.c
SRCS			+=	srcs/ft_itoa.c
SRCS			+=	srcs/ft_strmapi.c
SRCS			+=	srcs/ft_striteri.c
SRCS			+=	srcs/ft_putchar_fd.c
SRCS			+=	srcs/ft_putstr_fd.c
SRCS			+=	srcs/ft_putendl_fd.c
SRCS			+=	srcs/ft_putnbr_fd.c

#
## Part bonus
#

SRCS_BONUS		+=	srcs/ft_lstnew_bonus.c
SRCS_BONUS		+=	srcs/ft_lstadd_front_bonus.c
SRCS_BONUS		+=	srcs/ft_lstsize_bonus.c
SRCS_BONUS		+=	srcs/ft_lstlast_bonus.c
SRCS_BONUS		+=	srcs/ft_lstadd_back_bonus.c
SRCS_BONUS		+=	srcs/ft_lstdelone_bonus.c
SRCS_BONUS		+=	srcs/ft_lstclear_bonus.c
SRCS_BONUS		+=	srcs/ft_lstiter_bonus.c
SRCS_BONUS		+=	srcs/ft_lstmap_bonus.c

#	=== FLAGS ===

CFLAGS			+=	 -Wall
CFLAGS			+=	 -Wextra
CFLAGS			+=	 -Werror

#	=== KEYS WORDS ===

NAME		= libft.a

OBJS		= $(SRCS:.c=.o)
OBJS_BONUS	= $(SRCS_BONUS:.c=.o)

#	=== COMMANDES ===

all:			$(NAME)

$(NAME):		$(OBJS)
				@ar rcs $@ $^

bonus:			$(OBJS) $(OBJS_BONUS)
				@ar rcs $(NAME) $(OBJS) $(OBJS_BONUS)

clean:
				@rm -f $(OBJS) $(OBJS_BONUS)

fclean:			clean
				@rm -f $(NAME)

re:				fclean all
