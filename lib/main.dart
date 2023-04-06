import 'package:flutter/material.dart';
import 'package:ritul/2insta.dart';
import 'package:ritul/animation.dart';
import 'package:ritul/collingpage.dart';
import 'package:ritul/listview.dart';
import 'package:ritul/myhomepage.dart';
import 'package:ritul/redio.dart';
import 'package:ritul/sudocu.dart';
import 'package:ritul/tictac.dart';
import 'Dialog.dart';
import 'RR.dart';
import 'async.dart';
import 'font.dart';
import 'getwidget.dart';
import 'instagram.dart';
import 'listview2.dart';
import 'loveshayari.dart';

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
        'sudocu':(context) => sudocu(),
        'tictoc':(context) => tictoc(),
        'collingpage':(context) => collingpage(),
        'listview':(context) => listview(),
        'instagram':(context) => instagram(),
        'insta':(context) =>insta(),
        'loveshayari':(context) =>shayari(),
        'redio':(context) =>redio(),
        'Dialog':(context) =>dialog(),
        ' async':(context) => async(),
        ' getanimation':(context) => getanimation(),
        'font':(context) => font(),
        'listview2':(context) => listview2(),


      },
      home:MyHomePage(),debugShowCheckedModeBanner: false,
    );
  }
}
