import 'package:flutter/material.dart';
import 'package:ritul/myhomepage.dart';
import 'package:ritul/sudocu.dart';
import 'package:ritul/tictac.dart';

void main ()
{
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        'sudocu':(context) => sudocu(  ),
        'tictoc':(context) => tictoc(  ),

      },
      home:MyHomePage(),debugShowCheckedModeBanner: false,
    );
  }
}
