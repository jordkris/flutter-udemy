class Person {
  String firstName;
  int age;

  Person(this.firstName, this.age);
//   {
//     firstName = firstName;
//   }
  void printName() {
    print('my name is ${firstName}, i am ${age} years old.');
  }
}

void main() {
  var person1 = new Person('Budi', 22);
  var person2 = new Person('Andi', 22);
  person1.printName();
  person2.printName();
}
