import 'package:flutter/material.dart';

class _EquatableTesting extends StatefulWidget {
  const _EquatableTesting({super.key});

  @override
  State<_EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<_EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Person person = Person(name: 'Asif', age:20);
            Person person1 = Person(name: 'Asif', age:20);
            print(person.hashCode.toString());
            print(person.hashCode.toString());

            print(person == person1);
            print(person == person);
          }
      ),
    );
  }
}



class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  bool operator == (Object other){
    return identical(this, other) ||
    other is Person &&
    runtimeType == other.runtimeType &&
    name == other.name &&
    age == other.age;
  }
  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}