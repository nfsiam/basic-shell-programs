#Write a Program to Check Whether a Number is Palindrome or Not. Example: 1001001 (Palindrome) 10001001 (Not Palindrome)

read -p "Enter number: " num

res=`echo "$num%10" | bc`
#echo $res
tnum=$num
sum=0
while(($tnum>0))
do
	res=`echo "$tnum%10" | bc`
	sum=`echo "$sum*10" | bc`
	sum=`echo "$sum+$res" | bc`
	tnum=`echo "$tnum/10" | bc`
done

echo $sum

if [ $num -eq $sum ]
then
	echo Palindrome
else
	echo not Palindrome
fi