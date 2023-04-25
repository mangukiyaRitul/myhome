import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritul/classimagepikar.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {


File? file;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stasusbar  = MediaQuery.of(context).padding.top;
    double bottombar = MediaQuery.of(context).padding.bottom;

    double bodyheight = height-stasusbar-bottombar;
    return Scaffold(
      body: SizedBox(
        height: bodyheight,
        width: width,
        child: Padding(
          padding:  EdgeInsets.fromLTRB(10, 50, 0, 0),
          child: ListTile(
            title: Text("Ritul Mangukiya"),
           leading:
           // Icon(Icons.add_a_photo_outlined)
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:DecorationImage(
                   image:AssetImage("image/001.jpg")
                   // FileImage(file!),
                )
              ),
            ),

          ),
        ),
      ),

    );
  }
}