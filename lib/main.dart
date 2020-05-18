import 'package:flutter/material.dart';
import 'basic_math.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
  title: 'Calciescience',
  home: Scaffold(
      body: Center(
        child: BasicMath()
        )
      )
    );
}
}
 
