#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-multiple-argv.sh             :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/28 08:11:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/17 01:39:41 by acesar-l         ###   ########.fr
#
#

 CYAN="\033[0;36m"
GREEN="\033[0;32m"
  RED="\033[0;31m"
RESET="\033[0m"
  MAP="maps/valid/map1.ber"
EXTRA1="maps/valid/map2.ber"
EXTRA2="maps/valid/map3.ber"
ERROR1=$(./../so_long $MAP $EXTRA1 | grep "Error" | wc -l)
ERROR2=$(./../so_long $MAP $EXTRA1 $EXTRA2 | grep "Error" | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Check for multiple argv: $GREEN       [OK] $RESET"
else
	echo -e -n "${CYAN}Check for multiple argv: $RED       [KO] $RESET"
fi


if [ ${ERROR2} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi
