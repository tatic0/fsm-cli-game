#!/bin/bash
x=50
y=10

fsm="}o!!o{"
echo "welcome to the flying spaghetti monster insane bash game"
for i in {1..5}
  do echo -n "$i.."
  sleep 0.3
done
tput clear
tput cup $y $x 
echo "$fsm"
while true 
  do read -s -n1 a 
  tput clear
  #echo $a
  #                  W
  # classic vintage ASD controls
  if [ $a = a ]
    then x=`expr $x - 1`
  elif [ $a = d ]
    then x=`expr $x + 1`
  elif [ $a = s ]
    then y=`expr $y + 1`
  elif [ $a = w ]
    then y=`expr $y - 1`
  else
    exit 1
  fi
  tput cup $y $x 
  echo "$fsm"
done
