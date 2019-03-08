echo "Please enter first number"
read a
echo "Please enter the second number"
read b
echo "The quoteint after division is:"
c=`echo $a / $b | bc`
echo $c
