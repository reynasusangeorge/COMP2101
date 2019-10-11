#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="reyna"
#referenceString="password"
#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
theTries=1
echo "Guess the password: "
while [ $theTries -gt 0 ] && [ $theTries -le 3 ]
do
read password
if [ $myString = $password ]
then
  echo "The guessed password is correct "
break
elif [ $myString != $password ]
then
  echo "The password incorrect please try again."
fi
theTries=$[$theTries +1]
done
