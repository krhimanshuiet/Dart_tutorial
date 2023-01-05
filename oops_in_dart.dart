// OOPS


//  create class and objects 

// define properties of student 



// void main(){
//   var student1 = new Student(3 , "sam");  // refrence variable

//   print(student1.id);
//   print(student1.name);


//   var student2 = Student.myConstructor();  // refrence variable

//   print(student2);
// }





class Student{
  int id = -1;   // instance variable , default value of null
  String name = " ";

  // Student(){
    // default constructor.
  // }

  // both default constructor and parametrised constructor at same time is not allowed.

  // Student(int id , String name){
  //   this.id = id;
  //   this.name = name;
  // }\ dfezxACSDV NM,ṆVCXZC+

  Student(this.id ,this.name); // sort constructor


  // named constructor 

  Student.myConstructor(){
    print("this is my coustom cunstructor");
  }

  Student.myAnotherConstructor(this.id , this.name);

  void study(){
    print(" student is  studying");
  }

  void sleep(){
    print(" student is sleeping");
  }

}
//instance variables or field variables

// define function in class

//constructor 



// default constructor 
//parametrized contructor 

// constant constructors - used in GUI.


// Getters and Setters 


String name = "tom" ; // instance variable - default setter
// print(Student.name); // default getters


class Person{
  // String name;



  double _percent = 0; // private instance variable
// coustom setter and getter 

  // void   set percentage(int marksSecured){
  //   _percent =  (marksSecured / 500) * 100;
  // }


  // double get percetage{
  //   return _percent;
  // }

  // optimised 

  void set percentage(double marksSecured) => _percent = (marksSecured / 100) *5;

  double get percentage =>  _percent;


}



// Inheritance 

/*
single Inheritance
multi -level inheritance 
hierarchial inheritance 
 */


// implementing Inheritance 










//Method overriding 


// class Animal {
//   String color = "brown";
  

 

//   void eat(){
//     print(" Animal iseat");

//   }


// }
// class Dog extends Animal{
//   String breed = "";

//   String color = "black";



//   void bark(){
//     print("bark");
//   }


//   void eat(){
//     super.eat();
//     print("Dog is eating");
//   }



// }



// using constructor during inheritance 

// void main(){
//   var dog1 = new Dog("abc" , "black");
//   print("");
//   var dog2 = new Dog("xyz", "brown");
//   print("");
//   var dog3 = new Dog.myNamedDogConstructor("mnc", "red");
// }


// class Animal {
//   String color = "";

//   Animal(String color){
//     this.color = color;
//     print("Animal class constructor.");
//   }
// }

// class Dog extends Animal{
//   String breed = "";

//   Dog(String breed , String color):super(color){
//     this.breed = breed;
  
//     print("Dog class contructor.");
//   }


//   Dog.nammedConstructor() : super("black"){
//     print("dog");
//   }
// }


class Animal{
  String color = "";

  Animal(String color){
    this.color = color;
    print("Animal class constructor called.");
  }


  Animal.myNamedConstructor(String color){
    this.color = color;
    print("Animal Named constructor called.");
  }
}


class Dog extends Animal{

  String breed = "";

  Dog(String breed , String color) : super(color){
    this.breed = breed;
    print("Dog constructor called.");
  }

  Dog.myNamedDogConstructor(String breed , String color) : super.myNamedConstructor(color){
    this.breed = breed;
    print("Dog named constructor called.");
  }
}





// abstract class and methods 
//  void main(){
//   // var shape1 = new Shape(); // can not innstantiate abstract class.

//   var rect1 = new Rectangle();

//   rect1.draw();

//   var circle1  = new Circle();

//   circle1.draw();


//  }

// abstract class Shape{

//   void draw();

// }


// class Rectangle  extends Shape{
//   @override
//   void draw() {
//     // TODO: implement draw
//     print("Drawing Rectangle");
//   }

// }


// class Circle extends Shape{
//   @override
//   void draw(){
//     print("Drawing Circle..");
//   }
// }

// Interface  in dart 

// void main(){
//   var tv = new Television();

//   tv.volume_down();
//   tv.volume_up();
// }


// class Remote{
//   void volume_up(){
//     print("Vol up from remote.");
//   }


//   void volume_down(){
//     print("vol down from remote");
    

//   }
// }


// class Television implements Remote{

//   @override
//   void volume_down() {
//     // TODO: implement volume_down
//     print("vol down in tv");
//   }


//   void volume_up(){
//     print("vol up in telivision");
//   }

// }


//static methods and variables


// void main(){

//   // print(Circle.pie);

//   Circle.calculateArea(7);

// }

// can not acces static variables using instance variable of the class.
// static variables and methods are allocated memory only at once.
// we can save memory using static keywords 
// class Circle{
//   static const double pie = 3.14;


//   static void calculateArea(int r){
//     print("Area is ${2*pie*r*r}");
//   }

// }



// functional programming in dart 

// lambdas , higher order function and clouser



// lamnda  - anonymous function

// void main(){

//   // Function addTwoNumber = (int a , int b){
//   //   var sum = a + b;
//   //   print(sum);
//   Function addNumber = (int a , int b) => a+b;
//   someOther("hello", addNumber);


//   var myFun = taskToPerform();

//   myFun(10);


//   }


  //call


  // addTwoNumber(3,4);

  // var addNumber = (int a , int b ) => print(a+b);

  // addNumber(90,40);


  // higher order function


  // function can accept function as a argument and return function as a return value.

  // void someOther(String message , Function myFunction){
  //   print(message);
  //   myFunction();
  // }


  // Function taskToPerform(){
  //   Function multiplyFour = (int n) => n * 4;

  //   return multiplyFour;
  // }




// clousers in dart

// clouser is a function  that has access to the parent scope , even after the scope has closed.

// A clouser is a function 

// void main(){

//  String message = "dart";
//  Function showMessage = (){
//   message = "dart is pg lng";
//   print(message);
//  }; 


//  showMessage();

//  Function talk = (){
//   String msg = "hi";

//   Function say = (){
//     msg = "Hello";
//     print(msg);
//   };


//   return say;
//  };

//  talk();

// }



// collections in dart


// list -  fixed length list and growable list.

// set  - hashset 

// map - hashmap


// array is list - ordered collection of data 


void main(){

  List<int> numbersList = [1,2,3,4,5];

  


  // for(int i in numbersList){
  //   print(i);
  // }















  
  
  numbersList.forEach((element) => print(element));



  late int x = 30;

  int y = x;

  print(y);

















  
  
  // fixed list



}

 



















