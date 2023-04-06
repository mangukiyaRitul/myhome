import 'package:flutter/material.dart';
import 'package:ritul/animation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}
int counter=0;
class _secondState extends State<second> {

  get() async {
    final prefs = await SharedPreferences.getInstance();
    counter = prefs.getInt('counter')??10;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }
  bool c=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        height: c?200:100,
        width: c?200:100,
        color: Colors.teal,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 5),
        onEnd: () {
          c=!c;
          setState(() {});
        },
      ),
    );
  }
}
