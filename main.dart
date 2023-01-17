// asynchronous programming using Future , await , async , then apiS


import 'dart:async';

void main(){
  
  print("Main program:Starts");
  
  printFileContent();
  
  printFileContentString();
  
  
  print("Main Program:Ends");
  
  
  
}


printFileContentString() async {
  String fileContent = await downloadFileContent();
  
  print('The downloded string is --> $fileContent');
}


printFileContent() {
  Future<String> fileContent =  downloadFileContent();
  
  fileContent.then((resultString){
    print('The content of the file is  --> $resultString');
  });

  
}


Future<String> downloadFileContent(){
  
  Future<String> result = Future.delayed(Duration(seconds:6),(){
    
    return "My name is file content";
    
  });
  
  return result;
}


// 1 day
//entry point in dart -  main() function






void main() {
  print("Hello world");

  // we can print string in between " "
  print("this is my first application");

  // printing number

  print(90 * 78);

  // Performing  arithmetic operations
  print(4 - 1);

  // print bo0lean value
  print(false);
  print(true);

  // This is my first line of code

  /*
   multi line
   comment 
   */

  // Data types and variables in Dart

  /*s
    Number - int and double
    Strings
    Booleans
    ---------------------------
    List
    Maps
    Runes(for expressing Unicode character in a string)
    Symbols
    
    
    NOTE : All data types in Dart are objects 
    Therefore , Values are by default null unless we declare them
    */

  // Variable declaration in Dart

  int age = 90;
  // or
  var myAge = 98; // it is inferred as interger automatically by compiler

  String name = "Henery";

  var myName = "himanshu";

  bool Alive = true;

  var isAlive = false;

  int hexValue = 0xEADABABC;

  print(hexValue);

  double exponent = 1.43e5;

  bool count = false;

  print(count);

  //  Strings and String Interpolation

  // Literals

  int x = 2;
  var y = "john";
  double g = 4.5;

  // Various Ways to define String Literals in Dart

  String s1 = 'single';
  String s2 = "double";

  String s3 = "It 's eassy";

  String s4 = 'It \'s eassy';

  String s5 = 'This is going to be very long string in '
      'dart programming langauge';

  // String interpolation  use ["My name is $name "] instead of ["My name is" + name]

  String My_name = "Himanshu Singh";

  String massage = "My name is";

  print("My name is $My_name");

  print("The number of character in String is " + My_name.length.toString());

  //  using string interpolation

  print("The number of characters in String is ${My_name.length} ");

  int a = 50;
  int b = 56;

  print("The sum of a and b is ${a + b}");

  double length = 90.78;
  double breadth = 45.5;

  print(
      "Area of the ractangle with length $length and breadth $breadth is ${length * breadth}");



// Defining constants in Dart


// const and final - if we do not want to change the value of the variable

const pi = 3.14;
final k = "hks";


/*
Diffrence between final and const 

final variable can only be set once and it is initialised when accessed 

const variable is implicitly final but it is compile-time constant
i.e it is initialised during compilation

instance variable  can be final but can not be const.
If you want a constant at class level then make it static const.

 */


// final variable

final  String city = "mumbai"; // writing datatype is optional 

print(city);

// const variable

const pie = 3.14;


// class Circle{
//   final coolor = 'Red';

//   static const pi = 3.14;
// }



// control flow statements

// if else statement 

int salary = 30000;

if(salary > 20000){
  print("Congrats you got promotion");
}
else{
  print("You are not promoted! You need to work hard");
}

var marks = 70;


if (marks >= 90 && marks < 100) {
  print("A+ grade");
  
}
else if (marks >= 80 && marks < 90) {
  print("A grade");
}
else if (marks >= 70 && marks < 80) {
  print("B+");
}
else{
  print("Invalid input");
}



// 2nd day 

// conditional expressions

// There are two types of conditional expressions

// condition1 ? exp1 : exp2


// int a = 2;
// int b = 4;
// int smallNumber = 0;

// a < b ? smallNumber = a:smallNumber = b;



// exp1 ?? exp2

// String name = "tom";

// String nameToPrint = name ?? "Guest User";



// switch and case 


String grad = "A";
// only interger or string can be used as a variable;
switch(grad){
  case "A":
  print("Excellent grade of A");
  break;

  case "B":
  print("Very Good");
  break;

  case "C":
  print("Good enough");
  break;

  default:
  print("Invalid");
}


// Loop Control Statement 

// for 
// while
// do-while
//break, continue keywords

//Intro to iterators

// for loop
for (var i = 0; i < 4; i++) {
  print("Hello");
}
// while loop
var i = 9;
while (i > 0) {
  print("Hello");
  i--;
  
}

// do - while loop
var xp = 8;


do{
  print("Hello");
  xp--;
}while (xp > 0) ;




//  for loop in list 

List planetList = ["Mercury" , "Venus" , "Earth" , "Mars"];

for(String planet in planetList){
  print(planet);
}


// break keyword


for (var i = 0; i < 5; i++) {
  print(i);
  break;
  
}


// continue


myLabel:for (var i = 0; i < 9; i++) {
  if(i == 8){
    continue myLabel;
  }
  
}


// labels

outerloop : for (var i = 0; i < 8; i++) {
  innerloop: for (var j = 0; j < 6; j++) {


    if(i == 2 && j == 4){
      break outerloop;
    }

    if(i  == 1 && j == 1){
      break innerloop;
    }
    print(i);
    
  }
  
}


// functions and methods 

// defining functions and demo function


int findArea(int length , int breadth){ // return type is optional 
  return length * breadth;
}

print(findArea(50, 90));


// functions in Dart  are objects


//Functions can be assigned to a variable or passed as parameter to other function.

// all the functions in dart return some value by-default it returns null.


void findPerimeter(int l , int  b){
 
  int perimeter = 2 * (l+b);


  print("Perimeter of the rectangle is $perimeter");
}


findPerimeter(4,2);



int  getArea(int a , int b){
  return a*b;
}


getArea(40, 50);







// functions as expressions - otimizing our function code.


void findMyArea(int l , int b) => print("Area is ${l*b}");


findMyArea(30,60);


void findMyPerimeter(int a , int b) => print("Perimeter of rectangle is ${2*(a+b)}");


findMyPerimeter(70, 80);

// parameters in dart 
//1.Required
//2.optional - positional , named , default

// required parameters 
// void printCities(String name1 , String name2 , String name3){
//   print("Name 1 is $name1");
//   print("Nmae 2 is $name2");
//   print("Name 3 is $name3");
// }


// printCities("india" , "usa" , "uk");

// optional positional parameters 


// void printCities(String name1 , [String name2 , String name3]){
//   print("Name 1 is $name1");
//   print("Nmae 2 is $name2");
//   print("Name 3 is $name3");
// }

// printCities("india");


// optional named parameters 



// prevent errors if there is large no of parameters


// int findVol(int length , int breadth ,  {int height} ){
//   return length*breadth*height;
// }


// var res = findVol(2 , 8 , height:50);


// print(res);


// optional default parameters 

// int findVol(int a , int b , {int c = 90}){
//   return a*b*c;
// }


// findVol(30, 50 , c : 50);







//Exception Handling in Dart


// try , catch , on , finally








print("Case 1");

try {
  int result = 12 ~/ 0;
  print(result);
  
} on IntegerDivisionByZeroException{
  print("Can not divide by Zero");
}
print("");
print("case 2"); 
try {
  int result = 12 ~/ 0;
  print(result);
  
} catch(e){
  print("The exception thrown is $e");
}

// if exception is known then use "ON" if we do not know then we will use "catch".

print("");
print("case 3");

try {
  int result = 12 ~/ 0;
  print(result);
  
} catch(e , s){
  print("The exception is $e");
  print("stack trace \n $s");
}

print("");
print("case 4");


try {
  int result = 12 ~/ 0;
  print(result);
  
} catch(e){
  print("The exception is $e");
} finally{
  print("Finally is always excecuted.");
}

print("");
print("case 5");


// custom exception handling 


// try {
//   depositMoney(-900);
// } catch(e) {
//   print(e.errorMessage());
// }






// custom exceptional handling 


// create our own exceptinal handling 

















}


// class depositeException implements Exception{


//   String errorMessage(){
//     return "You can not enter amount less than 0";
    
//   }




// }


//   void depositMoney(int amount){
//     if(amount < 0){
//       throw new depositeException();
//     }
//   }




