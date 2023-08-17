#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-not-rectangular-map.sh       :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/06/20 23:43:10 by acesar-l          #+#    #+#
#   Updated: 2021/07/15 10:43:41 by acesar-l         ###   ########.fr
#
#

  CYAN="\033[0;36m"
 GREEN="\033[0;32m"
   RED="\033[0;31m"
 RESET="\033[0m"
  MAP1="maps/invalid/map-not-rectangular-1.ber"
  MAP2="maps/invalid/map-not-rectangular-2.ber"
  MAP3="maps/invalid/map-not-rectangular-3.ber"
  MAP4="maps/invalid/map-not-rectangular-4.ber"
ERROR1=$(./../so_long $MAP1 | grep "Error" | wc -l)
ERROR2=$(./../so_long $MAP2 | grep "Error" | wc -l)
ERROR3=$(./../so_long $MAP3 | grep "Error" | wc -l)
ERROR4=$(./../so_long $MAP4 | grep "Error" | wc -l)

if [ ${ERROR1} -ge 1 ]
then
	echo -e -n "${CYAN}Check Map not Rectangular:    $GREEN  [OK] $RESET"
else
	echo -e -n "${CYAN}Check Map not Rectangular:    $RED  [KO] $RESET"
fi

if [ ${ERROR2} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR3} -ge 1 ]
then
	echo -e -n "$GREEN[OK] $RESET"
else
	echo -e -n "$RED[KO] $RESET"
fi

if [ ${ERROR4} -ge 1 ]
then
	echo -e "$GREEN[OK] $RESET"
else
	echo -e "$RED[KO] $RESET"
fi
