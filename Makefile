CC = c++
FLAGS = -Wall -Wextra -Werror -MMD -MP -g3 -std=c++98
SRCS =	echoserver.cpp
OBJS = $(SRCS:.cpp=.o)
NAME = icrserv

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o $(NAME)

%.o : %.cpp
	$(CC) $(FLAGS) -c $< -o $@

clean :
	rm -rf $(OBJS)
	rm -rf $(SRCS:.cpp=.d)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY: all clean re fclean