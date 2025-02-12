import 'package:flutter/material.dart';
import 'package:playground/HomePage.dart';
import 'package:playground/factory_method.dart';
import 'package:playground/singleton/singleton.dart';
import 'package:playground/singleton/singleton2.dart';

void main() {
  // Employee employee = Employee(EmployeeType.programmer);
  Employee employee = FactoryMethod.getEmployee("programmer");
  employee.work();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Singleton1.getInstance();
    // Singleton1 singleton2 = Singleton1.getInstance();
    // Singleton1 singleton3 = Singleton1.getInstance();
    // Singleton1 singleton4 = Singleton1.getInstance();

    // Singleton1 singleton1 = Singleton1();

    Singleton2 singleton5 = Singleton2.instance;
    Singleton1 singleton2 = Singleton1();
    Singleton1 singleton3 = Singleton1();
    Singleton1 singleton4 = Singleton1();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}

