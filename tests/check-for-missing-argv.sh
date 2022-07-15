#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-missing-argv.sh              :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/28 08:07:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/17 01:39:41 by acesar-l         ###   ########.fr
#
#

 CYAN="\033[0;36m"
GREEN="\033[0;32m"
  RED="\033[0;31m"
RESET="\033[0m"
ERROR=$(./../so_long | grep "Error" | wc -l)

if [ ${ERROR} -ge 1 ]
then
	echo -e "${CYAN}Check for missing argv: $GREEN	[OK] $RESET"
else
	echo -e "${CYAN}Check for missing argv: $RED [KO] $RESET"
fi
