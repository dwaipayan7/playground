import 'package:flutter/material.dart';

@immutable
class Person {
  final String name;
  final String lastName;
  final int age;
  final String nation;
  final String email;

  const Person({
    required this.name,
    required this.lastName,
    required this.age,
    required this.nation,
    required this.email,
  });

  Person copyWith({
    String? name,
    String? lastName,
    int? age,
    String? nation,
    String? email,
  }) {
    return Person(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nation: nation ?? this.name,
      email: email ?? this.email,
    );
  }

  Person clone() => copyWith(
      name: name, lastName: lastName, age: age, nation: name, email: email);
}

Person person = const Person(
  name: "Dwaipayan",
  lastName: "Biswas",
  age: 22,
  nation: "IN",
  email: "biswasdwai1432@gmail.com",
);
