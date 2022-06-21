#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-empty-line.sh                :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/06/20 23:43:10 by acesar-l          #+#    #+#
#   Updated: 2021/06/20 23:43:41 by acesar-l         ###   ########.fr
#
#

GREEN="\033[0;32m"
  RED="\033[0;31m"
RESET="\033[0m"
  MAP="maps/valid/map-empty-line.ber"
ERROR=$(./../so_long $MAP | grep "Error" | wc -l)

if [ ${ERROR} -ge 1 ]
then
	echo -e "Check Map with an Empty Line: $RED[KO] $RESET"
else
	echo -e "Check Map with an Empty Line: $GREEN[OK] $RESET"
fi
