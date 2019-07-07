#Find the sum of all even numbers numbers till N. Input N.
read -p "Enter number :" num
sum=0

for((i=0;i<=$num;i++))
do
	sum=`echo "$sum+$i" | bc`
	(( i++ ))
done

echo $sum