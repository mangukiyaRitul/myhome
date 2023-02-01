   import 'package:flutter/material.dart';

class sudocu extends StatefulWidget {
  const sudocu({Key? key}) : super(key: key);

  @override
  State<sudocu> createState() => _sudocuState();
}

class _sudocuState extends State<sudocu> {
  String b1 = "1",
      b2 = "2",
      b3 = "3",
      b4 = "4",
      b5 = "5",
      b6 = "6",
      b7 = "7",
      b8= ""  ,
      b9 = "8";
   String w="";
   win() {
     if (b1 == '1'&& b2 == '2' && b3 == '3' && b4 == '4' && b5 == '5' && b6 == '6' && b7 == '7' && b8 == '8' && b9 == '') {
       w = "You are win";
     }else
       {
         w;
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (b2=="") {
                                      b2=b1;
                                      b1="";

                                    }
                                    else if(b4=="" )
                                    {
                                      b4=b1;
                                      b1="";


                                    }
                                    win();
                                    }
                                  );
                                  // win();
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
                                    if (b1=="") {
                                      b1=b2;
                                      b2="";

                                    }
                                    else if(b3=="" )
                                    {
                                      b3=b2;
                                      b2="";


                                    }
                                    else if(b5=="")
                                    {
                                      b5=b2;
                                      b2="";
                                    }
                                    win();
                                  }
                                  );
                                  // win();
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
                                    if (b2=="") {
                                      b2=b3;
                                      b3="";
                                      // win();
                                    }
                                    else if(b6=="" )
                                    {
                                      b6=b3;
                                      b3="";
                                      // win();
                                    }
                                    win();
                                  }
                                  );
                                  // win();
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
                                    if (b1=="") {
                                      b1=b4;
                                      b4="";

                                    }
                                    else if(b5=="" )
                                    {
                                      b5=b4;
                                      b4="";
                                    }
                                    else if (b7=="")
                                      {
                                        b7=b4;
                                        b4="";
                                      }
                                    win();
                                  }
                                  );
                                  // win();
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
                                    if (b2=="") {
                                      b2=b5;
                                      b5="";
                                    }
                                    else if(b4=="" )
                                    {
                                      b4=b5;
                                      b5="";

                                    }
                                    else if(b6=="")
                                      {
                                        b6=b5;
                                        b5="";

                                      }
                                    else if(b8=="")
                                      {
                                        b8=b5;
                                        b5="";

                                      }
                                     win();
                                  }
                                  );
                                  // win();
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
                                    if (b3=="") {
                                      b3=b6;
                                      b6="";

                                    }
                                    else if(b5=="" )
                                    {
                                      b5=b6;
                                      b6="";


                                    }
                                    else if(b9=="")
                                      {
                                        b9=b6;
                                        b6="";

                                      }
                                     win();
                                  }
                                  );
                                  // win();
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
                                    if (b4=="") {
                                      b4=b7;
                                      b7="";
                                      // win();
                                    }
                                    else if(b8=="" )
                                    {
                                      b8=b7;
                                      b7="";
                                      // win();

                                    }
                                     win();
                                  }
                                  );
                                  // win();
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
                                    if (b7=="") {
                                      b7=b8;
                                      b8="";
                                      // win();
                                    }
                                    else if(b9=="" )
                                    {
                                      b9=b8;
                                      b8="";
                                      // win();

                                    }
                                    else if(b5=="")
                                      {
                                        b5=b8;
                                        b8="";
                                        // win();
                                      }
                                     win();
                                  }
                                  );
                                  // win();
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
                                    if (b8=="") {
                                      b8=b9;
                                      b9="";
                                      // win();
                                    }
                                    else if(b6=="" )
                                    {
                                      b6=b9;
                                      b9="";
                                      // win();

                                    }
                                    win();
                                  }
                                  );
                                  // win();
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

                        Container(

                          margin: EdgeInsets.fromLTRB(0, 80, 00, 00 ),

                          child: Column(
                              children: [
                                    Container(child: Text("$w",style: TextStyle(fontSize: 30),),

                                    ),
                            ],
                          ),

                        ),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [

                              // ElevatedButton(
                              //   onPressed: () { win(); }, child: Text("$w")),
                              ElevatedButton(onPressed: (){
                                b1 = "1";
                                b2 = "6";
                                b3 = "";
                                b4 = "8";
                                b5 = "5";
                                b6 = "7";
                                b7 = "3";
                                b8 = "4";
                                b9 = "2";

                                w="";
                                // win();
                                setState(()  {});
                              }, child:Container(
                                 child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.refresh_outlined),
                                    Text("Reset"),
                                  ],
                                 ),
                               ), ),
                              ],
                          ),

                        ),


                ],
          ),

        ),
        ) ),
    );
  }
}
