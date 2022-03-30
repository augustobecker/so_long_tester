# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/25 16:02:17 by acesar-l          #+#    #+#              #
#    Updated: 2022/03/30 00:59:38 by acesar-l         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN		= 	\033[0;32m
RED			= 	\033[0;31m
RESET		= 	\033[0m

TESTS		=	check-for-no-map.sh 				\
				check-for-missing-argv.sh			\
				check-for-multiple-argv.sh			\
				check-for-invalid-extension.sh		\
				check-for-invalid-parameter.sh		\
				check-for-square-map.sh				\
				check-for-not-rectangular-map.sh	\
				check-for-missing-W.sh				\
				check-for-missing-C.sh				\
				check-for-missing-E.sh				\
				check-for-missing-P.sh				\
				check-for-extra-P.sh			

all:			permission invalid-maps

permission:		
				@chmod a+x *		
				
invalid-maps: 			
				@ echo "*-------| INVALID MAP TESTS |--------*"
				@ echo
				@ ./check-for-no-map.sh
				@ ./check-for-missing-argv.sh
				@ ./check-for-multiple-argv.sh
				@ ./check-for-invalid-extension.sh
				@ ./check-for-square-map.sh
				@ ./check-for-not-rectangular-map.sh
				@ ./check-for-invalid-parameter.sh
				@ ./check-for-missing-W.sh				
				@ ./check-for-missing-C.sh				
				@ ./check-for-missing-E.sh				
				@ ./check-for-missing-P.sh					
				@ ./check-for-extra-P.sh
				@ echo 
				@ echo "*-------|-------------------|--------*"

.PHONY:			all permission invalid-maps
