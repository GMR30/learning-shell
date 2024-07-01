#!/bin/bash
echo "Enter the first number "
read -s firstbumber
echo "Enter the second number"
read -s secondnumber
result=$((firstbumber+secondnumber))
echo "The sum of entered numbers is: ${result}"


