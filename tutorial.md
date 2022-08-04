# Adding a command
There are many ways to add command easily.

- Adding commands using: `elif`
  - Recommended if using if/else/elif/fi, you can use: switch/case

- Adding commands by using functions.

# Function
```sh
# this is an example for function.
foo(){
    echo "bar"
}

# we are calling the foo
foo
```

# Adding more functions
Using variable: `$1/$2/$3`
```sh
# $1 is the variable for the first command:
# example: cli >>>--help<<< --another-param
# the >>>--help<<< will return --help command which $1 param.

# so we need to get it using variable $1/$2/$3

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
	echo "You typed help!"
else
	echo "You typed not help."
fi
```
# Adding function to execute a command.
Example:
```sh
help(){
   echo "Hello world."
}
```
So we are saying if:
```sh
test(){
   echo "test"
}

if [ "$1" == "--test" ]; then
	# we are calling test() function
	test
   else
	echo "type --test correctly on parameter!"
fi
```

# Adding aliases to command.
You can basically add aliases variables, for example:
```sh
if [ "$1" == "--test" ] || [ "$1" == "-t" ]; then
	echo "test"
fi
```
Use `||` between `[ "$1" == "--help" ]` and `[ "$1" == "-t"`

# Using switch/case
You can also basically call switch method.
```sh
case $1 in
	"--help")
		echo "help command"
		;;
	"--test")
		echo "test command"
		;;
esac
```

Done, you are now learned the basics of shell script. Thats all!
