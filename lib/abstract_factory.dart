import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/flutter_factory_method.dart';
import 'package:playground/platform_indicator.dart';

abstract class AbstractFactory{

  Widget buildButton(BuildContext context, String text, VoidCallback onPressed);
  Widget buildIndicator(BuildContext context);

}

class AbstractFactoryImpl implements AbstractFactory{
  @override
  Widget buildButton(BuildContext context, String text, VoidCallback onPressed) {

    return PlatformButton(Theme.of(context).platform).build(onPressed, Text(text));

  }

  @override
  Widget buildIndicator(BuildContext context) {

    return PlatformIndicator(Theme.of(context).platform).build();

  }

}