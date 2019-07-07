#Program to Make a Simple Calculator Using switch...case.

select option in Add Sub Multi Div
do
	case $option in
		"Add" )
			echo "Input two numbers"
			read num1
			read num2
			res=`echo "$num1+$num2" | bc`
			echo
			#printf $num1 " + " $num2 " = " $res
			echo $res
			;;
	
		"Sub" )
			echo "Input two numbers"
			read num1
			read num2
			res=`echo "$num1 - $num2" | bc`
			echo
			#printf $num1 " - " $num2 " = " $res
			echo $res
			;;

		"Multi" )
			echo "Input two numbers"
			read num1
			read num2
			res=`echo "$num1*$num2" | bc`
			echo
			#printf $num1 " * " $num2 " = " $res
			echo $res
			;;
	
		"Div" )
			echo "Input two numbers"
			read num1
			read num2
			res=`echo "scale=2; $num1/$num2" | bc -l`
			echo
			#printf $num1 " / " $num2 " = " $res
			echo $res
			;;
	
		* )
			echo wrong input
			;;
	esac
done
