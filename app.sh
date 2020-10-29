#!/usr/bin/env bash
v1=World
printf "Hello $v1 \r\n"

echo "Who are you?"
read name
echo "Hello $name"

echo "This ${name}'s books"
#------------------------------
v1=2000
v2=200
if [[ $v1 > $v2 ]]; then
   echo "The $v1 is greater than $v2"
elif [[ $v2 > $v1 ]]; then
   echo "The $v2 is greater than $v1"
else
   echo "$v1 is equal to $v2"
fi
#------------------------------
arr=(a b c d e f)
for i in "${arr[@]}"; do
    echo "$i"
done

for (( i=0; i<${#arr[@]}; i++ )); do
    echo ${arr[$i]}
done

j=0
while [[ $j -lt ${#arr[@]} ]]; do
      echo ${arr[$j]}
      j=$(expr $j + 1)
#or ((j++))
done
#------------------------------
#String Comparators
#-z "$str" return true if zero
#-n "$str" return true if note zero
#"$str1" = "$str2" return true if equal
#"$str1" != "$str2" return true if not equal

#Integer Comparatores
# "$int1" -eq "$int2" return true if equal
# "$int1" -nq "$int2" return true if not equal
# "$int1" -gt "$int2" return true if int1 greater tahn int2
# "$int1" -ge "$int2" return true if int1 greater equal int2
# "$int1" -lt "$int2" return true if int1 less than int2
# "$int1" -le "$int2" return true if int1 less equal int2
#------------------------------
#arr=([3]='fourth element')
#arr[0]='first element'

declare -A John
John[Geometry]=B+
echo ${John[Geometry]}
John[Math]+=A+
echo ${John[@]}
echo ${!John[@]}
#------------------------------
Welcome() {
  local name=$1
  local h=$2
  echo "HEllo $name"
}

Welcome jamal

fund() {
  local var=${1:?Error! No parameter!} 
  echo ${var}	
}
fund ali

fund2() {
  local var=${1:?Error! No parameter!} 
  echo ${var}   
}
temp=fund2
echo $temp
#------------------------------
