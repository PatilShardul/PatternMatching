
echo "Welcome To User Registeration Check"

read -p "Enter First Name" firstName

firstNamePattern=^[A-Z][a-zA-Z]{2}

if [[ $firstName =~ $firstNamePattern ]]
then
	echo "$firstName"
else 
	echo "Invalid First Name"
fi
