echo "Enter user name:\c"
read logname

grep "$logname" /etc/passwd > /home/harshit/Desktop/labwork/57/null
if [ $? -eq 0 ]
then 
	echo "wait...."
else
	echo "user not found."
	exit
fi

time=0

while true 
do
	who | grep "$logname" > /home/harshit/Desktop/labwork/57/null
	if [ $? -eq 0 ]
	then
		echo "$logname has logged in "
		if [ $time -ne 0 ]
		then 
			echo "$logname was $time min late in logging in"
		fi
		exit
	else
		time=`expr $time + 1`
		sleep 60
	fi
done
