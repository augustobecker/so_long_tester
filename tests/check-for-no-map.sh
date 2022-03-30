#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-no-map.sh                    :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/28 07:52:10 by acesar-l          #+#    #+#
#   Updated: 2021/03/30 01:39:41 by acesar-l         ###   ########.fr
#
#

GREEN="\033[0;32m"
  RED="\033[0;31m"
RESET="\033[0m"
  MAP="Maps/invalid/no-map.ber"
ERROR=$(./../so_long $MAP | grep "Error" | wc -l)

if [ ${ERROR} -ge 1 ]
then
	echo -e "Check for no Map: $GREEN		[OK] $RESET"
else
	echo -e "Check for no Map: $RED              [KO] $RESET"
fi
