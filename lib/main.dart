import 'package:flutter/material.dart';
import 'package:playground/HomePage.dart';
import 'package:playground/factory_method.dart';

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

