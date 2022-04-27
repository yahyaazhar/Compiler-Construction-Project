# Compiler-Construction-Project
# Project requires LEX and YACC for running. Its a mini compiler for PHP like language. It generates tokens, check syntax successfully. 
# Properties of mini PHP compiler:
# $ for variable declaration e.g          $x = 45 and $y = 1.2
# string declaration $name = "yahya"
# operators that can be identified:       <,>, <=,>=, =, ==, *, +, /,-,!=,%,**
# punctuation                             [,{,(,),},] ,;,(,)
# comment single line and multiline
# delimiters                              space, newline, tab


# Program block <?php
        Statements
    ?>
    
# Declaration and Assignment  statement
Operator (+,- , *, **, /)
$num1 = 4;
$num2 =10;
$sum = $num1 + $num2;
$string1 = ' Hello';
$a=$b+$c;
$a=10* 5 - $b;    

# Bool Expression Operator 
   (>,<,==,!=,>=,<=)  
   5<6 a>=10 10!=5
   
# Repetition statement
   while (boolexp) {
      code to be executed;
   }

# Decision structure  One-way
  if (condition) {
    code to be executed if condition is true;
  }
  Two-way
  if (condition) {
    code to be executed if condition is true;
  }
  else {
  code to be executed if condition is false;
  }
  
# Output statement Output:
  echo "PHP is Fun!";
  echo "value is : " . $txt2 . "Rupees";
  echo $y;
  
# Function statement
  function functionName() {
    code to be executed;
  }  
