#!/usr/bin/bash -x
shopt -s  extglob

echo "Welcome To User Registeration Check"

read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
read -p "Enter User Email : " email

firstNamePattern=^[A-Z][a-zA-Z]{2}

lastNamePattern=^[A-Z][a-zA-Z]{2}

emailPattern=^[a-z]+([.][a-z]+)?@[a-z]+.[a-z]+([.][a-z]+)?$

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

if [[ $email =~ $emailPattern ]]
then
	echo "$email"
else
	echo "Invalid Email"
fi

