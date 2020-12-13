#!/usr/bin/bash -x
shopt -s  extglob

echo "Welcome To User Registeration Check"

read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
read -p "Enter User Email : " email
read -p "Enter Mobile Number In '(country code)xx (number)xxxxxxxxxx' Format : " mobileNumber
firstNamePattern=^[A-Z][a-zA-Z]{2}

lastNamePattern=^[A-Z][a-zA-Z]{2}

emailPattern=^[a-z]+([.][a-z]+)?@[a-z]+.[a-z]+([.][a-z]+)?$

mobileNumberPattern=^[0-9][1-9]"\s"[0-9]{10}

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

if [[ $mobileNumber =~ $mobileNumberPattern ]]
then
	echo "+$mobileNumber"
else
	echo "Invalid Mobile Number"
fi

