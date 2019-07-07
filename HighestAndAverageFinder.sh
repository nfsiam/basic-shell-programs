#Wrtie a program that take 5 values as an array input and print the average and highest number.

echo enter 5 numbers ,press enter key after entering each number
echo
declare -a arr

for((i=0;i<5;i++))
do
    read arr[$i]
done

echo
echo

sum=0

for((i=0;i<5;i++))
do
    printf "%0.2f" "${arr[$i]}"
    printf " "
    temp=${arr[$i]}
    sum=`echo "$sum+$temp" | bc`

done

average=`echo "scale=2; $sum/5" | bc -l`

echo
echo
printf "Average: "
echo $average
echo


for ((i = 0; i<5; i++)) 
do
      
    for((j = i; j<5-i-1; j++)) 
    do
      
        if ((${arr[j]} > ${arr[$((j+1))]})) 
        then
            # swap 
            temp=${arr[$j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done

printf "Highest number: "
echo ${arr[4]}
echo
