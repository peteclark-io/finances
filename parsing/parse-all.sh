#!/bin/bash

cd $(dirname $0)

file=./secret/midata.dat
results=./secret/results.dat

cat ${file} | ./parse.sh "TFL" Expenses:Travel Assets:Current > ${results}
cat ${file} | ./parse.sh "Pret" Expenses:Food:Breakfast Assets:Current >> ${results}
cat ${file} | ./parse.sh "McDonalds" Expenses:Food:Drunk Assets:Current >> ${results}
cat ${file} | ./parse.sh "Boots" Expenses:Toiletries Assets:Current >> ${results}
cat ${file} | ./parse.sh "Fifth Dimension" Expenses:Gym Assets:Current >> ${results}
cat ${file} | ./parse.sh "TV Licence" "Expenses:TV Licence" Assets:Current >> ${results}
cat ${file} | ./parse.sh "Zeppelin Shelter" "Expenses:Pub" Assets:Current >> ${results}
cat ${file} | ./parse.sh "Vodafone" Expenses:Phone Assets:Current >> ${results}
cat ${file} | ./parse.sh "Tesco" Expenses:Food:General Assets:Current >> ${results}
cat ${file} | ./parse.sh "Sainsbury" Expenses:Food:General Assets:Current >> ${results}
cat ${file} | ./parse.sh "Byron" Expenses:Food:Lunch Assets:Current >> ${results}
cat ${file} | ./parse.sh "Wasabi" Expenses:Food:Lunch Assets:Current >> ${results}
cat ${file} | ./parse.sh "Bene Bene" Expenses:Food:Lunch Assets:Current >> ${results}
cat ${file} | ./parse.sh "Waitrose" Expenses:Food:General Assets:Current >> ${results}
cat ${file} | ./parse.sh "Itsu" Expenses:Food:Lunch Assets:Current >> ${results}
cat ${file} | ./parse.sh "The Duke" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "Big Easy" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "The Winchester" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "The Diner" Expenses:Food:Drunk Assets:Current >> ${results}
cat ${file} | ./parse.sh "Voodoo Ray" Expenses:Food:Drunk Assets:Current >> ${results}
cat ${file} | ./parse.sh "The Nest" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "Birthdays" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "HMV" Expenses:Gifts Assets:Current >> ${results}
cat ${file} | ./parse.sh "Waterstones" Expenses:Gifts Assets:Current >> ${results}
cat ${file} | ./parse.sh "Canteen" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "The Alibi" Expenses:Pub Assets:Current >> ${results}
cat ${file} | ./parse.sh "Premium Bonds" Assets:Savings Assets:Current >> ${results}
cat ${file} | ./parse.sh "Subway" Expenses:Food:Lunch Assets:Current >> ${results}

cat ./secret/savings.dat ${results} > ${results}.2
mv ${results}.2 ${results}
