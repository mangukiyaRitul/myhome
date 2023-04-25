import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'my_text.dart';

class Myslider extends StatefulWidget {
  const Myslider({Key? key}) : super(key: key);

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  bool app = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(24))
            ),
            child: Row(
              children:[
                SizedBox(
                  height: 50,
                  width: 300,
                  child: RiveAnimation.asset("asset/rive/4490-9149-little-icons.riv",
                       artboard: "SEARCH",  
                  ),
                ),
              ],
            ),
          ),
        ),
          appBar: AppBar(
              // leading: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         app = !app;
              //       });
              //     },
              //     icon: app ? Icon(Icons.close) : Icon(Icons.menu))
              ),
          body: Stack(
            children: [
              Mytext(),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.red,
              shape: UnderlineInputBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)

                )
              ),
              child: Container(
                  width: app ? 300   : 00,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    ),
                    color: Colors.grey.shade800,
                  ),
                  child: Column(
                    children: [
                      DrawerHeader(
                        child:    ListTile(
                      // selectedTileColor: Colors.red,
                      // splashColor: Colors.red,
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration:  BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("image/001.jpg"),
                              )),
                        ),
                        title: Text("Mangukiya Ritul",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        subtitle: Text("You Tube",
                            style: TextStyle(color: Colors.white60)),
                      ),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "BROWSE",
                            style: TextStyle(color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mytext(),));
                          },
                          child: ListTile(
                            leading: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Home",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Search",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Setting",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wallet,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Wallet",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.support_agent,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Support",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Favorites",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.feedback_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          "feedback",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
    );
  }
}
