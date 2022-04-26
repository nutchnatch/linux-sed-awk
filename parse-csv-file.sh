#!/bin/bash


#add the old field separator to a variable and setting a new fild separator (comma)
OLDIFS=$IFS; IFS=","
while read product price quantity
do
  echo -e "$product =========\n\
  Price : \t $price \n\
  Quantity: \t $quantity \n"
done < $1
IFS=$OLDIFS
