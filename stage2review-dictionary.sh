

a=10
b=20
c=30

e=$((a+b*c))
f=$((a*b+c))
g=$((c+a/b))
h=$((a%b+c))


echo  "value of a+b*c is : $e"

echo  "value of a*b+c is : $f"

echo  "value of c+a/b is : $g"

echo  "value of a%b+c is : $h"


declare -A variable



variable[e]="610"
variable[f]="230"
variable[g]="30"
variable[h]="40"



numbers=(610 230 30 40)

for (( i=0 ; i < ${#numbers[@]}; i++ )) 
do
    for (( j=0 ; j < ${#numbers[@]}; j++ )) 
    do
      if [[ ${numbers[$j]} -lt  ${numbers[$i]} ]]
      then
        tmp=${numbers[$i]}
        numbers[$i]=${numbers[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${numbers[@]}"
do
    echo "$n"
done


numbers=(610 230 30 40)

for (( i=0 ; i < ${#numbers[@]}; i++ )) 
do
    for (( j=0 ; j < ${#numbers[@]}; j++ )) 
    do
      if [[ ${numbers[$j]} -gt  ${numbers[$i]} ]]
      then
        tmp=${numbers[$i]}
        numbers[$i]=${numbers[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${numbers[@]}"
do
    echo "$n"
done
