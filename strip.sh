#!/bin/bash

grep -v "TFL" -e "Pret" -e "McDonalds" -e "Boots" -e "Fifth Dimension" -e  "TV Licence" -e  "Zeppelin Shelter" -e  "Vodafone" -e  "Tesco" -e  "Sainsbury" -e  "Byron" -e  "Wasabi" -e  "Bene Bene" -e  "Waitrose" -e  "Itsu" -e  "The Duke" -e  "Big Easy" -e  "The Winchester" -e  "The Diner" -e  "Voodoo Ray" -e  "The Nest" -e  "Birthdays" -e  "HMV" -e  "Waterstones" -e  "Canteen" -e  "The Alibi" -e  "Premium Bonds" secret/midata.dat > midata-remaining.dat
