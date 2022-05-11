# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/25 16:02:17 by acesar-l          #+#    #+#              #
#    Updated: 2022/05/11 10:51:57 by acesar-l         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN		= \033[0;32m
RED		= \033[0;31m
RESET		= \033[0m

PATH_TEST	= tests
PATH_GAME	= ../

TESTS		= ${PATH_TEST}/check-for-no-map.sh 		\
		${PATH_TEST}/check-for-missing-argv.sh		\
		${PATH_TEST}/check-for-multiple-argv.sh		\
		${PATH_TEST}/check-for-invalid-extension.sh	\
		${PATH_TEST}/check-for-invalid-parameter.sh	\
		${PATH_TEST}/check-for-missing-W.sh		\
		${PATH_TEST}/check-for-missing-C.sh		\
		${PATH_TEST}/check-for-missing-E.sh		\
		${PATH_TEST}/check-for-missing-P.sh		\
		${PATH_TEST}/check-for-extra-P.sh

all:		m

m:		game permission invalid-maps valid-maps

game:
		@ make -C ${PATH_GAME}

permission:
		@chmod -R a+x *
		
no-map:
		@ ./${PATH_TEST}/check-for-no-map.sh

miss-argv:
		@ ./${PATH_TEST}/check-for-missing-argv.sh
		
mult-argv:
		@ ./${PATH_TEST}/check-for-multiple-argv.sh
		
invalid-extension:
		@ ./${PATH_TEST}/check-for-invalid-extension.sh

invalid-paramater:
		@ ./${PATH_TEST}/check-for-invalid-parameter.sh

miss-w:
		@ ./${PATH_TEST}/check-for-missing-W.sh
		
miss-c:
		@ ./${PATH_TEST}/check-for-missing-C.sh

miss-e:
		@ ./${PATH_TEST}/check-for-missing-E.sh
		
miss-p:
		@ ./${PATH_TEST}/check-for-missing-P.sh
		
extra-p:
		@ ./${PATH_TEST}/check-for-extra-P.sh

invalid-maps:
		@ echo
		@ echo "*-------| INVALID MAP TESTS |--------*"
		@ echo
		@ ./${PATH_TEST}/check-for-no-map.sh
		@ ./${PATH_TEST}/check-for-missing-argv.sh
		@ ./${PATH_TEST}/check-for-multiple-argv.sh
		@ ./${PATH_TEST}/check-for-invalid-extension.sh
		@ ./${PATH_TEST}/check-for-invalid-parameter.sh
		@ ./${PATH_TEST}/check-for-missing-W.sh
		@ ./${PATH_TEST}/check-for-missing-C.sh
		@ ./${PATH_TEST}/check-for-missing-E.sh
		@ ./${PATH_TEST}/check-for-missing-P.sh
		@ ./${PATH_TEST}/check-for-extra-P.sh
		@ echo

.PHONY:		all m game permission no-map miss-argv mult-argv 		\
		invalid-extension invalid-paramater				\
		miss-w miss-c miss-e miss-p extra-p invalid-maps valid-maps
