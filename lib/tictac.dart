import 'package:flutter/material.dart';


class tictoc extends StatefulWidget {
  const tictoc({Key? key}) : super(key: key);

  @override
  State<tictoc> createState() => _tictocState();
}

class _tictocState extends State<tictoc> {
  String b1 = "",
      b2 = "",
      b3 = "",
      b4 = "",
      b5 = "",
      b6 = "",
      b7 = "",
      b8= "",
      b9 = "";
  int t = 0,
      o =0,
      x=0;
  String round = "", w="";
String x1="x",x2="O";


  void win() {
    if (b1 == "X" && b2 == "X" && b3 == "X") {
      w="x";
      x1="x";
      x2="O";
    }
    else if (b4 == "X" && b5 == "X" && b6 == "X") {
      w = "X";
      x1="x";
      x2="O";
    }
    else if (b7 == "X" && b8 == "X" && b9 == "X") {
      w = "X";
      x1="x";
      x2="O";
    }
    else if (b1 == "X" && b4 == "X" && b7 == "X") {
      w = "X";
      x1="x";
      x2="O";
    }
    else if (b2 == "X" && b5 == "X" && b8 == "X") {
      w = "X";
      x1="x";
    x2="O";
    }
    else if (b3 == "X" && b6 == "X" && b9 == "X") {
      w = "X";
      x1="x";
      x2="O";

    }
    else if (b1 == "X" && b5 == "X" && b9 == "X") {
      w = "X";
      x1="x";
      x2="O";
    }
    else if (b3 == "X" && b5 == "X" && b7 == "X") {
      w = "X";
      x1="x";
      x2="O";

    }

    if (b1 == "O" && b2 == "O" && b3 == "O") {
      w = "O";
      x1="O";
      x2="x";

    }
    else if (b4 == "O" && b5 == "O" && b6 == "O") {
      w = "O";
      x1="O";
      x2="x";
    }
    else if (b7 == "O" && b8 == "O" && b9 == "O") {
      w = "O";
      x1="O";
      x2="x";
    }
    else if (b1 == "O" && b4 == "O" && b7 == "O") {
      w = "O";
      x1="O";
      x2="x";
    }
    else if (b2 == "O" && b5 == "O" && b8 == "O") {
      w = "O";
      x1="O";
      x2="x";

    }
    else if (b3 == "O" && b6 == "O" && b9 == "O") {
      w = "O";
      x1="O";
      x2="x";
    }
    else if (b1 == "O" && b5 == "O" && b9 == "O") {
      w = "O";
      x1="O";
      x2="x";
    }
    else if (b3 == "O" && b5 == "O" && b7 == "O") {
      w = "O";
      x1="O";
      x2="x";

    }
  }
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.orange.shade300,
          height: double.infinity,
         child: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(200 , 30, 0, 200),
                         child: Row(
                           children: [
                             ElevatedButton(
                                 onPressed: () {}, child: Text("Players 2"))
                           ],
                         ),
                       ),

                     ],
                   ),
                 ),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b1 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b1 = "x";
                                       round = "O";
                                     } else {
                                       b1 = "o";
                                       round = "x";
                                     }

                                     t++;

                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b1",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b2 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b2= "x" ;
                                       round = "O";
                                     } else {
                                       b2 = "o";
                                       round = "X";

                                     }
                                     t++;
                                   }

                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b2",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b3 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b3 = x1;
                                       round = "O";
                                     } else {
                                       b3 = x2;
                                       round = "X";

                                     }
                                     t++;
                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b3",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
                 //circle
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         height: 4,
                         width: 91,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 1, 1, 1),

                         height: 6,
                         width: 6,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           // color: Colors.black,
                         ),
                         // color: Colors.redAccent,
                       ),
                       Container(
                         height: 4,
                         width: 90,
                         // color: Colors.black,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 1, 1, 1),

                         height: 6,
                         width: 6,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           // color: Colors.black,
                         ),
                         // color: Colors.redAccent,
                       ),
                       Container(
                         height: 4,
                         width: 91,
                         // color: Colors.redAccent,
                       ),
                     ],
                   ),
                 ),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b4 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b4 = "X";
                                       round = "O";

                                     } else {
                                       b4 = "O";
                                       round = "X";

                                     }
                                     t++;
                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b4",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b5 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b5 = "X";
                                       round = "O";

                                     } else {
                                       b5 = "O";
                                       round = "X";

                                     }
                                     t++;
                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b5",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b6 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b6 = "X";
                                       round = "O";

                                     } else {
                                       b6 = "O";
                                       round = "X";
                                     }
                                     t++;
                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b6",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),


                     ],
                   ),
                 ),
                 //circle
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         height: 4,
                         width: 91,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 1, 1, 1),

                         height: 6,
                         width: 6,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           // color: Colors.redAccent,
                         ),
                         // color: Colors.redAccent,
                       ),
                       Container(
                         height: 4,
                         width: 90,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 1, 1, 1),

                         height: 6,
                         width: 6,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           // color: Colors.redAccent,
                         ),
                         // color: Colors.redAccent,
                       ),
                       Container(
                         height: 4,
                         width: 91,
                         // color: Colors.redAccent,
                       ),
                     ],
                   ),
                 ),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b7 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b7 = "X";
                                       round = "O";

                                     }else {
                                       b7 = "O";
                                       round = "X";
                                     }
                                     t++;
                                   }
                                 });
                                   win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b7",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b8 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b8 = "X";
                                       round = "O";

                                     }else {
                                       b8 = "O";
                                       round = "X";
                                     }
                                   }
                                   t++;
                                 }

                                 );
                                 win();
                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b8",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                         height: 70,
                         width: 4,
                         // color: Colors.redAccent,
                       ),
                       Container(
                         child: Column(
                           children: [
                             ElevatedButton(
                               onPressed: () {
                                 setState(() {
                                   if (b9 == "" && w=="") {
                                     if (t % 2 == 0) {
                                       b9 = "X";
                                       round = "O";
                                     } else {
                                       b9 = "O";
                                       round = "X";
                                     }
                                   }
                                   t++;
                                 }

                                 );
                                   win();

                               },
                               child: Container(
                                 alignment: Alignment.center,
                                 child: Text(
                                   "$b9",
                                   style: TextStyle(
                                     fontSize: 25,
                                   ),
                                 ),
                                 height: 80,
                                 width: 60,
                               ),
                             )
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),

                 //Name
                 Container(
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         margin: EdgeInsets.fromLTRB(28, 200, 0, 0),
                         child: Row(
                           children: [
                             ElevatedButton(
                                 onPressed: () {}, child: Text("Wins $w"))
                             // Container(
                             //   child: Text("Wins x",
                             //     style: TextStyle(fontSize: 18,
                             //     ),
                             //   ),
                             // ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(100, 200, 28, 0),
                         child: Row(
                           children: [
                             ElevatedButton(
                               onPressed: () {},
                               child: Text("Round $round"),
                             ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.fromLTRB(80, 200, 0, 0),
                         child: Column (
                           crossAxisAlignment:  CrossAxisAlignment.end,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             ElevatedButton(
                                 onPressed: () {
                                    b1=b2=b3=b4=b5=b6=b7=b8=b9="";
                                    t=o=x=0;
                                    round = w;
                                   w="";
                                   setState(() {

                                 });},
                                 child: Container(
                                   child: Row(children: [
                                     Icon(Icons.refresh),
                                     Text("Reset")
                                   ]),
                                   decoration: BoxDecoration(),
                                 ))
                           ],
                         ),
                       ),
                       // Container(
                       //   margin: EdgeInsets.fromLTRB(45, 200, 10, 0),
                       //   child: Row(
                       //     children: [
                       //       ElevatedButton(
                       //         onPressed: () {},
                       //         child: Text("Wins $o"),
                       //       )
                       //     ],
                       //   ),
                       // ),

                     ],
                   ),
                 ),
               ],
             )
         ),
        ),
      ),
    );
  }
}
