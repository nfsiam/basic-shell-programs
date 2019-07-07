#Print this using loop.
#1
#1 2
#1 2 3
#1 2 3 4
#1 2 3
#1 2
#1

read -p "Enter any odd number greater than or equal to 3 :" num
echo

n=1
tnum=`echo "$num/2" | bc`
tnum=`echo "$tnum+1" | bc`
ttnum=`echo "$num-$tnum" | bc`
ttnum=`echo "$ttnum-1" | bc`

for ((i=0;i<$tnum;i++))
do
	tn=$n;
	for((j=0;j<i+1;j++))
	do
		printf $tn
		printf " "
		((tn++))
	done
	echo
done

for ((i=$ttnum;i>-1;i--))
do
	tn=$n;
	for((j=0;j<i+1;j++))
	do
		printf $tn
		printf " "
		((tn++))
	done
	echo
done
