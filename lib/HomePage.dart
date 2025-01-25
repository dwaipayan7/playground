import 'package:flutter/material.dart';
import 'package:playground/flutter_factory_method.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              PlatformButton(TargetPlatform.android).build((){
                print("Android Button Clicked");
              }, Text("Click")),

            PlatformButton(TargetPlatform.iOS).build((){
              print("iOS Button Clicked");
            }, Text("Click"))
          ],
        ),
      ),
    );
  }
}
