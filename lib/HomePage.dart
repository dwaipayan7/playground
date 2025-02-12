import 'package:flutter/material.dart';
import 'package:playground/abstract_factory.dart';
import 'package:playground/adaptar/adaptar.dart';
import 'package:playground/flutter_factory_method.dart';
import 'package:playground/prototype/immutable_prototype.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PostAPI postAPI = PostAPI();

  @override
  Widget build(BuildContext context) {
    // Person person = const Person(
    //   name: "Dwaipayan",
    //   lastName: "Biswas",
    //   age: 22,
    //   nation: "IN",
    //   email: "biswasdwai007@gmail.com",
    // );
    //
    // Person person1 = person.clone();
    //
    // print(person1.name);
    // print(person.name);

    Person person = Person(
      name: "Dwaipayan",
      lastName: "Biswas",
      age: 22,
      nation: 'IN',
      email: 'biswasdwai007@gmail.com',
    );


    Person person1 = person.clone();


    print(person.name);
    print(person1.name);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //   PlatformButton(TargetPlatform.android).build((){
            //     print("Android Button Clicked");
            //   }, Text("Click")),
            //
            // PlatformButton(TargetPlatform.iOS).build((){
            //   print("iOS Button Clicked");
            // }, Text("Click"))

            // AbstractFactoryImpl().buildButton(context, "Hello", (){}),
            // SizedBox(height: 5,),
            // AbstractFactoryImpl().buildIndicator(context)

            Expanded(
              child: ListView.builder(
                itemCount: postAPI.getPosts().length,
                itemBuilder: (context, index) {
                  final posts = postAPI.getPosts()[index];
                  return ListTile(
                    title: Text(posts.title),
                    subtitle: Text(posts.bio),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
