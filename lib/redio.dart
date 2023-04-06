import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

class redio extends StatefulWidget {
  const redio({Key? key}) : super(key: key);



  @override
  State<redio> createState() => _redioState();
}

class _redioState extends State<redio> {
  // bool? c1=false;
  // String str="";

  String str="three";


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            //       Radio(value: "male", groupValue: str, onChanged:(value) {
            //         setState(() {
            //         str=value!;
            //       }); }  ),
            // Radio(value: "female", groupValue: str, onChanged:(value) {
            //   setState(() {
            //     str=value!;
            //   }); }  ),
            
            // DropdownButton(
            //   isExpanded: true,
            //   icon: Icon(Icons.account_circle_rounded),
            //   isDense: true,
            //   // onChanged: (),items: [
            //
            //
            // ],)
            ],
        ),
      ),
    );
  }
}
