
echo "Welcome To User Registeration Check"

read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
firstNamePattern=^[A-Z][a-zA-Z]{2}
lastNamePattern=^[A-Z][a-zA-Z]{2}

if [[ $firstName =~ $firstNamePattern ]]
then
	echo "$firstName"
else
	echo "Invalid First Name"
fi

if [[ $lastName =~ $lastNamePattern ]]
then
	echo "$lastName"
else
	echo "Invalid Last Name"
fi

