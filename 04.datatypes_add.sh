#!/bin/bash
echo "Enter the first number "
read -s firstbumber
echo "Enter the second number"
read -s secondnumber
result=$((firstbumber+secondnumber))
echo "The sum of entered numbers is: ${result}"
result_diff=$((firstbumber-secondnumber))
echo "The difference of entered numbers is: ${result_diff}"
result_prod=$((firstbumber*secondnumber))
echo "The product of entered numbers is: ${result_prod}"
result_quo=$((firstbumber/secondnumber))
echo "The quotient of entered numbers is: ${result_quo}"
