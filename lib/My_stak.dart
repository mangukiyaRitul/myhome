import 'package:flutter/material.dart';

class My_stack extends StatelessWidget {
  const My_stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Positioned(
                top:25 ,
                left: 50,
                child: Container(
                  height: 150,
                  width:150,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                top: 45,
                left: 120,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
