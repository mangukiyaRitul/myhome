import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class insta extends StatefulWidget {
  const insta({Key? key}) : super(key: key);

  @override

  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  List a=["Fenil padmani","Meet Sutariya","Ramya__Official","yug","Utsav"," Raj ","Neer Gheveriya","Sahil shekhda","Nayan Chauhan","Ved Gadhiya","Yash Mangukiya","Abhi Mangukiya","Nayan Sutariya","Ram Mangukiya","Darshan Mangukiya","gautam_patel","||_._sardar_._||","Aarin Godhani","Sahil Shekhda","Dhruv Jogani","keyur Sondagar","Darshan Vavdiya","Meet Sutariya","Ankit Sutariya","Yash Mangukiya","Abhi Mangukiya","Nayan Sutariya","Ram Mangukiya","Meet katrodiya",];
  List b=["kem 2h","Sent 1h ago","Sent Sunday","Sent unique.facts 11's reel.2d","Active 8m ago","Active yesterdey","Active 24m ago","Active now","Active 22m ado","Active yesterdey","Active 1h ago","Mantioned you in their story","Mantioned you in their story","Mantioned you in their story","Mantioned you in their story","Seen Fridey","Seen Fridey","Active 1h ago","Avtive now","Thanks 1w","Active yesterdey","Active yesterdey","Active now","Active yesterdey","Active 2h ago","Ha ho 3w","Seen","Tq Bro 3w","Thank you bhai",];
  List c=["001.jpg","001.jpg","010.jpg","003.jpg","007.jpg","008.jpg","009.jpg","010.jpg","011.jpg","012.jpg","015.jpg","010.jpg","009.jpg","010.jpg","007.jpg","001.jpg","010.jpg","007.jpg","007.jpg","008.jpg","009.jpg","010.jpg","011.jpg","012.jpg","015.jpg","015.jpg","009.jpg","010.jpg","010.jpg",];

  Widget build(BuildContext context) {
    return MaterialApp (
     debugShowCheckedModeBanner: false,

      home:Scaffold(
        body: SingleChildScrollView(
          child: Container(
           child: Column(
            children: [
               Container(

                 height: 130,
                 width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                    mainAxisExtent: 110,
                    childAspectRatio: 3,
                    //       crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                  ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        // height: 0,
                        // width: 0,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("image/${c[index]}", ),
                          fit: BoxFit.scaleDown,
                        )
                        ),
                        // child:("image/${c[index]}"),0
                      );
                    },scrollDirection: Axis.horizontal,
                  itemCount: c.length,
                ),
               ),
              Container(
                height: 30,
                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Messages",style: TextStyle(
                        fontSize: 18
                      )),
                    ),
                    Container(
                      child: Text("Requests",style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18
                      ),),
                      ),
                    ],
                  ),
                ),
             Container(
               width: double.infinity,
               height:700,
               child: ListView.builder(

                   itemBuilder: (context, index) {
                     return Container(
                       child: ListTile(
                         leading:  CircleAvatar(
                           backgroundImage: AssetImage("image/${c[index]}"),
                         ),
                         title: Text("${a[index]}"),
                         subtitle: Text("${b[index]}"),
                         trailing: Icon(Icons.camera_alt_outlined),

                       ),
                     );
                   },
                 itemCount: a.length,

               ),
             ),
            ],
           ),

          ),
        ),
      ),
    );
  }
}
