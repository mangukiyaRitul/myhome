import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bulb extends StatefulWidget {
  const bulb({Key? key}) : super(key: key);

  @override
  State<bulb> createState() => _bulbState();
}

class _bulbState extends State<bulb> {
  bool test = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: (test == false)?Image.asset("image/on.jpg"):Image.asset("image/off.jpg"),
            ),
            ElevatedButton(onPressed: (){
              if(test == false)
                {
                  test=true;
                  print(test);
                }
              else if (test==true)
                {
                  test=false;
                  print(test);
                }
              test = test!;
              setState(() {
                // test =  !test;
              });
            }, child: (test ==false)?Text("Off"):Text("On")),

          ],
        ),
      )),
    );
  }
}
