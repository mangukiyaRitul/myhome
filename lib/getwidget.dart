import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';

class getanimation extends StatefulWidget {
  const getanimation({Key? key}) : super(key: key);

  @override
  State<getanimation> createState() => _getanimationState();
}

class _getanimationState extends State<getanimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            GFButton(
              onPressed: (){},
              text: "Primary",
            ),

          ],
        ),
      ),
    );
  }
}
