#!/bin/bash

echo "Expenses per week"
echo "Breakfast: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W breakfast$ | tail -1 | awk '{print $6}')"
echo "Coffee: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W coffee$ | tail -1 | awk '{print $6}')"
echo "Lunch: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W lunch$ | tail -1 | awk '{print $6}')"
echo "Dinner: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W dinner$ | tail -1 | awk '{print $6}')"
echo "Dinner Out: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W out$ | tail -1 | awk '{print $6}')"
echo "Alcohol: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W alcohol$ | tail -1 | awk '{print $6}')"
echo "Alcohol w/ Work: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W alcohol:work$ | tail -1 | awk '{print $6}')"
echo "Fun: $(ledger -f ./secret/ledger.dat reg -p "last month" --average -W fun$ | tail -1 | awk '{print $6}')"
