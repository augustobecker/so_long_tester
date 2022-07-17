#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-missing-E.sh                 :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/15 14:35:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/17 01:39:41 by acesar-l         ###   ########.fr
#
#

  CYAN="\033[0;36m"
 GREEN="\033[0;32m"
   RED="\033[0;31m"
 RESET="\033[0m"
  MAP1="maps/invalid/map-missing-E-1.ber"
  MAP2="maps/invalid/map-missing-E-2.ber"
  MAP3="maps/invalid/map-missing-E-3.ber"
ERROR1=$(./../so_long $MAP1 | grep "Error" | wc -l)
ERROR2=$(./../so_long $MAP2 | grep "Error" | wc -l)
ERROR3=$(./../so_long $MAP3 | grep "Error" | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Check for missing E: $GREEN           [OK] $RESET"
else
	echo -e -n "${CYAN}Check for missing E: $RED           [KO] $RESET"
fi

if [ ${ERROR2} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR3} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi
