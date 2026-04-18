#!/bin/bash

# Read password (hidden input)
read -s -p "Enter password: " password
echo

# Initialize score
score=0

# Length check
if [ ${#password} -ge 8 ]; then
    ((score++))
fi

# Uppercase check
if [[ "$password" =~ [A-Z] ]]; then
    ((score++))
fi

# Lowercase check
if [[ "$password" =~ [a-z] ]]; then
    ((score++))
fi

# Number check
if [[ "$password" =~ [0-9] ]]; then
    ((score++))
fi

# Special character check
if [[ "$password" =~ [^a-zA-Z0-9] ]]; then
    ((score++))
fi

# Strength evaluation
echo -n "Password Strength: "

if [ $score -le 2 ]; then
    echo "Weak ❌"
elif [ $score -eq 3 ] || [ $score -eq 4 ]; then
    echo "Medium ⚠️"
else
    echo "Strong ✅"
fi