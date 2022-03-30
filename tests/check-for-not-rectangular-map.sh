#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-not-rectangular-map.sh       :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/15 14:35:10 by acesar-l          #+#    #+#
#   Updated: 2021/03/30 00:48:41 by acesar-l         ###   ########.fr
#
#

GREEN="\033[0;32m"
  RED="\033[0;31m"
RESET="\033[0m"
  MAP="../maps/invalid/map-not-rectangular.ber"
ERROR=$(./../../so_long $MAP | grep "Error" | wc -l)

if [ ${ERROR} -ge 1 ]
then
	echo -e "Check for not rectangular Map: $GREEN [OK] $RESET"
else
	echo -e "Check for not rectangular Map: $RED [KO] $RESET"
fi
