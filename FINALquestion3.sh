#Joshua Burak - 10169785
#Kat Pinto - 
#Dhanish Chinniah - 

read -s -p 'Potential Password: ' password
strength=0
size=${#password}
if [ $size > 7 ]; then
	strength=$((strength+=1));
fi

if [[ $password =~ [0-9] ]]; then
	strength=$((strength+=1));
fi

if [[ $password =~ ( '@' , '#' , '$' , '%' , '&' , '*' , '+' , '-' , '=' ) ]]; then
	strength=$((strength+=1));
fi

if [ $strength == 0 ]; then
	echo "Invalid password!";
elif [ $strength == 1 ]; then
	echo "Weak password!";
elif [ $strength == 2 ]; then
	echo "Moderate password!";
elif [ $strength == 3 ]; then
	echo "Strong password!";
fi

