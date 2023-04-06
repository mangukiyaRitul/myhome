import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ritul/fontclass.dart';

class font extends StatefulWidget {
  const font({Key? key}) : super(key: key);

  @override
  State<font> createState() => _fontState();
}

class _fontState extends State<font> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

          children:  [
            Text("Font 1234",style: Alkatra.Medium.copyWith(color: Colors.red,fontSize: 20)),
            Text("Font 1234",style: Alkatra.Bold,),
            Text("Font 1234",style: Alkatra.Regular,),
            Text("Font 1234",style: Alkatra.SemiBold),
          ]
      ),
    );
  }
}
