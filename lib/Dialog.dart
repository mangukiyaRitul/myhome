import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class dialog extends StatefulWidget {
  const dialog({Key? key}) : super(key: key);

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {

  String dropdownvalue = 'Item 1';
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
            height: 100,
            width: 100,
            color: Colors.indigo,
            child:ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                   barrierColor: Colors.transparent,
                  context: context,
                    builder: (context) {
                  return AlertDialog(
                      title: Text("Hello"),


                    actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("ok")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Cancel")),
                    ],
                  );
                },);
            }, child: Text("Clik")),
          ),
            Container(
            height: 100,
            width: 100,
            color: Colors.indigo,
            child:ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: false,
                   barrierColor: Colors.transparent,
                  context: context,
                    builder: (context) {
                  return Dialog(
                    child: Column(
                      children: [
                        Table(
                          children: [

                            TableRow(
                              children: [
                                Text("No"),
                                Text("Name"),
                                Text("Citiy"),
                              ],
                            ),

                        ],
                        ),
                      ],
                    ),
                  );
                },);
            }, child: Text("Clik")),
          ), Container(
            height: 100,
            width: 100,
            color: Colors.indigo,
            child:ElevatedButton(onPressed: (){
                showDialog(
                  barrierDismissible: true,
                   barrierColor: Colors.transparent,
                  context: context,
                    builder: (context) {
                  return SimpleDialog(
                    children : [
                      SimpleDialogOption(child: Text("RItul"),),
                      SimpleDialogOption(child: Text("RItul"),),
                      SimpleDialogOption(child: Text("RItul"),),
                      SimpleDialogOption(child: Text("RItul"),),
                    ],
                  );
                },);
            }, child: Text("Clik")),
          ),
            DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
        //     DropdownButton( value: dropdownvalue, items: items.map((String items){ return DropdownMenuItem(child: Text(items),) }, onChanged: (S),)
          ],
        ),
      ),
    );
  }
}
