import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:ritul/second.dart';
import 'package:shared_preferences/shared_preferences.dart';
class RR extends StatefulWidget {
  const RR({Key? key}) : super(key: key);

  @override
  State<RR> createState() => _RRState();
}

class _RRState extends State<RR> {

  int count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child:Row(
            children: [
              TextButton(onPressed: (){
                setState(() {
                  count++;
                });

              }, child:Text("+")),
              Text("$count"),
              TextButton(onPressed: (){
                setState(() {
                  count--;
                });

              }, child:Text("-")),
              ElevatedButton(onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.setInt('counter', count);
              }, child: Text("Stor")),

              ElevatedButton(onPressed: () async {
                print(count);
                final prefs = await SharedPreferences.getInstance();
                final int? counter = prefs.getInt('counter');
              }, child: Text("get")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return second();
                },));
              }, child: Text("secondpage"))
            ],
          ),
        ),
      ),
    );
  }
}


