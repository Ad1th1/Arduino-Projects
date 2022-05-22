# Generating a random number is how I make most decisions in life, even the big ones, lol! This is an elegant bit of code that will help me do just that


#!/bin/bash

echo "Enter two numbers"
read fir sec
echo $(($fir + $RANDOM % $sec))





