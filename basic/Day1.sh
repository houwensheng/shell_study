#! /bin/bash

echo "name"
read name
echo "hello,$name"

readonly name

name=123
echo "after readonly,$name"

unset name

echo "after unset,$name"

echo "PID :$$"

echo "file name: $0"
echo "firsh parameter: $1"
echo "second parameter: $2"
echo "parameters by @: $@"
echo "parameters by *: $*"
echo "total number of parameters: $#"

printf "\n"
echo "diff from \$* and \$@"
echo "\$*=" $*
echo "\"\$*\"=" "$*"
echo "\$@=" $@
echo "\"\$@\"=" "$@"

echo "print each param from \$*"
for var in $*
do
    echo "$var"
done

echo "print each param from \$@"
for var in $*
do 
    echo "$var"
done

echo "print each param from \"\$*\""
for var in "$*"
do 
    echo "$var"
done

echo "print each param from \"\$@\""
for var in "$@"
do 
    echo "$var"
done

echo "END:diff from \$* and \$@"

echo "The last echo's return is : $?"
