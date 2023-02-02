import 'package:flutter/material.dart';

class collingpage extends StatefulWidget {
  const collingpage({Key? key}) : super(key: key);

  @override
  State<collingpage> createState() => _collingpageState();
}

class _collingpageState extends State<collingpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black45,
                Colors.red,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: UnconstrainedBox(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text("Calling...",style: TextStyle(color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0 ),
                  child: Text("Ritul Mangukiya",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  child: Text("Home +91 9106045402",
                    style: TextStyle(
                      fontSize: 15  ,
                      color: Colors.white70,
                    ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('image/image.png'),
                    ),

                  ),
                  
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 5),

                              child: Column(
                                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.add,color: Colors.white30),
                                  Text('Add call',style: TextStyle(color: Colors.white30)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 50, 50, 5),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.videocam_rounded,color: Colors.white30),
                                  Text('Video call',style: TextStyle(color: Colors.white30)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 5),

                              child: Column(
                                children: [
                                  Icon(Icons.bluetooth,color: Colors.white,),
                                  Text('Bluetooth',style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),

                          ],

                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 5),

                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.volume_up_rounded,color: Colors.green),
                                  Text('Speaker',style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(70, 50, 70, 5),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.mic_off_sharp,color: Colors.white30),
                                  Text('Mute',style: TextStyle(color: Colors.white30)),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 5),

                              child: Column(
                                children: [
                                  Icon(Icons.apps_sharp,color: Colors.white),
                                  Text('Keypad',style: TextStyle(color: Colors.white)),

                                ],

                              ),
                            ),

                          ],

                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,

                  margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,

                  ),
                  child: Icon(Icons.call,color: Colors.red,size: 30 ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

