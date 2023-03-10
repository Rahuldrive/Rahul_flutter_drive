//B1

//What is inheritance?

//When One Object Acquire All The Properties and Behaviour of Parent class That is called an Inheritance.





//B2


//Which inheritance is not supported by Dart? Why?

// Multiple inheritance and hybrid inharitance is not support in dart because both are confused dart



//B3

//What is advantage of inheritance?


// Inheritance provides a clear model structure which is easy to understand.



//B4

//Difference between inheritance and encapsulation.

//Inheritance dictates that a child class (subclass) inherits all the attributes and methods from a parent class (superclass). Encapsulation dictates that one class must not have access to the (private) data of another class.


//B5

//Difference between inheritance and abstraction

//The main difference between abstraction and inheritance is that abstraction allows hiding the internal details and displaying only the functionality to the users, while inheritance allows using properties and methods of an already existing class. 


//B6

//Difference between inheritance and polymorphism

//Inheritance is essentially making a class, and then having other classes in your program get their feature form the already existing base class. However, polymorphism is an interface, and because of being an interface, it can take different shapes and forms.


//B7

//Can we override static method in Dart?

//no we  can't override static methods because The two static methods you declared there are in fact two different static methods, not the same, overriden one.


//B8

//Can we overload static method in Dart?

//Yes. We can overload static methods But remember that the method signature must be different.



//B9

//Can a class implement more than one interface?

//yes class can implement more than one interface.




//B 10

// Can a class extend more than one class in Dart?

// no class doesnt extend more than one class.



//B 11

//Can an interface extend more than one interface in Dart?

//An interface can extend other interfaces, just as a class subclass or extend another class. However, whereas a class can extend only one other class, an interface can extend any number of interfaces.



// B 12

//What will happen if a class implements two interfaces and they both have a method with same name and signature?

//If both interfaces have a method of exactly the same name and signature, the implementing class can implement both interface methods with a single concrete method.



// B 13

//Can we pass an object of a subclass to a method expecting an object of the super class?




//B 14

//Are static members inherited to sub classes?

//In Dart, static methods aren't inherited



// B 15

//What happens if the parent and the child class have a field with same identifier?

//Super class field member will be hidden at the sub class and super class field could be accessed using super keyword.



// B 16

//Are constructors and initializers also inherited to sub classes?

//Constructors are not members, so they are not inherited by subclasses, but the constructor of the superclass can be invoked from the subclass.



// B 17

//How do you restrict a member of a class from inheriting by its sub classes?

//We can restrict a member of a class from inheriting to it's sub classes by declaring the member as a private. Because, private members are not inherited to sub classes.



// B 18

//How do you implement multiple inheritance in Dart?

//No, Dart does not support multiple implementation inheritance.



// B 19

//Can a class extend by itself in Dart?

// Dart only supports single inheritance. So, we can not extend from multiple classes.



// B 20

//How do you override a private method in Dart?

//we cannot override private methods of libraries.




// B 21

//When to overload a method in Dart and when to override it?

//The return type should be the same as in the method present in the superclass. The argument list should be the same as in the method present in the superclass. We cannot override a method if it is declared static or final. If we can't inherit a method, we can't override it.



// B 22

//What is the order of extends and implements keyword on Dart class declaration?

//The extends keyword is typically used to alter the behavior of a class using Inheritance and The implement keyword is used to implement an interface by forcing the redefinition of the functions.




// B 23

//How do you prevent overriding a Dart method without using the final modifier?

//



// B 24

//What are the rules of method overriding in Dart?

//The return type should be the same as in the method present in the superclass. The argument list should be the same as in the method present in the superclass. We cannot override a method if it is declared static or final. If we can't inherit a method, we can't override it.



// B 25

//Difference between method overriding and overloading in Dart.

//Method Overloading is the concept of defining two or more methods with the same name but different signatures. Method Overriding is the concept of defining two or more identical methods, having the same name and signatures.



// B 26

//What happens when a class implements two interfaces and both declare field (variable) with same name?

//If both interfaces have a method of exactly the same name and signature, the implementing class can implement both interface methods with a single concrete method.



// B 27

//Can a subclass instance method override a superclass static method?

//we can't override static methods. The two static methods you declared there are in fact two different static methods, not the same, overriden one.



// B 28 

//Can a subclass static method hide superclass instance method?

//No. It results in compilation error in the subclass.



// B 29

//Can a superclass access subclass member?

//No, a superclass has no knowledge of its subclasses.



// B 30

//Difference between object oriented and object based language?

//Object-oriented languages do not have the inbuilt objects whereas Object-based languages have the inbuilt objects.



//B 31

//Explain Diamond problem.

//You can't solve a diamond problem in Dart because Dart doesn't have multiple inheritance, so it doesn't have the problem (or feature). Adding mixins on top of a class is completely normal single inheritance, and Dart class implementation is always a single chain down to Object.



// B 32

//Why Dart does not support operator overloading?

//Dart doesn't have overloading as it is our experience that overloading leads to confusion. 



// B 33

//What is Encapsulation in Dart?

//In Dart, Encapsulation means hiding data within a library, preventing it from outside factors.



// B 34

// Which of the Dart OOPS feature promotes access protection or data hiding?

//Data Encapsulation.













































