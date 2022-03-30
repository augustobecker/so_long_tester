# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/25 16:02:17 by acesar-l          #+#    #+#              #
#    Updated: 2022/03/30 06:42:48 by acesar-l         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN		= 	\033[0;32m
RED			= 	\033[0;31m
RESET		= 	\033[0m

PATH_TEST	= tests
PATH_GAME	= ../

TESTS		=	${PATH_TEST}/check-for-no-map.sh 			\
			${PATH_TEST}/check-for-missing-argv.sh		\
			${PATH_TEST}/check-for-multiple-argv.sh		\
			${PATH_TEST}/check-for-invalid-extension.sh		\
			${PATH_TEST}/check-for-invalid-parameter.sh		\
			${PATH_TEST}/check-for-square-map.sh			\
			${PATH_TEST}/check-for-not-rectangular-map.sh	\
			${PATH_TEST}/check-for-missing-W.sh			\
			${PATH_TEST}/check-for-missing-C.sh			\
			${PATH_TEST}/check-for-missing-E.sh			\
			${PATH_TEST}/check-for-missing-P.sh			\
			${PATH_TEST}/check-for-extra-P.sh

all:		game permission invalid-maps

game:
			@ make -C ${PATH_GAME}

permission:
			@chmod a+x *

invalid-maps:
			@ echo
			@ echo "*-------| INVALID MAP TESTS |--------*"
			@ echo
			@ ./${PATH_TEST}/check-for-no-map.sh
			@ ./${PATH_TEST}/check-for-missing-argv.sh
			@ ./${PATH_TEST}/check-for-multiple-argv.sh
			@ ./${PATH_TEST}/check-for-invalid-extension.sh
			@ ./${PATH_TEST}/check-for-square-map.sh
			@ ./${PATH_TEST}/check-for-not-rectangular-map.sh
			@ ./${PATH_TEST}/check-for-invalid-parameter.sh
			@ ./${PATH_TEST}/check-for-missing-W.sh
			@ ./${PATH_TEST}/check-for-missing-C.sh
			@ ./${PATH_TEST}/check-for-missing-E.sh
			@ ./${PATH_TEST}/check-for-missing-P.sh
			@ ./${PATH_TEST}/check-for-extra-P.sh
			@ echo
			@ echo "*-------|-------------------|--------*"

.PHONY:		all game permission invalid-maps
