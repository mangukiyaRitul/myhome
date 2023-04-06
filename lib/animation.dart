import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/size/gf_size.dart';

class animation extends StatefulWidget {
  const animation({Key? key}) : super(key: key);

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {

  bool c=false;
  int val=0;
  List list=[test2(),test1()];
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double appbar=kToolbarHeight;
    double appstatus=MediaQuery.of(context).padding.top;
    double bottombar=MediaQuery.of(context).padding.bottom;

    double body=height-appstatus-bottombar;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: body,
          width: width,
        child:Column(
          children: [
            Expanded(
                child: PageTransitionSwitcher(
                  duration: Duration(seconds: 1),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
        // transitionType: SharedAxisTransitionType.scaled,
          child: child,);
        },
                child: list[val]
                // c==false?test2():test1()
                    ),),

            // Container(
            //   margin: EdgeInsets.fromLTRB(10,0, 10,0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       TextButton(onPressed: (){
            //         c=false;
            //         setState(() {});
            //       }, child: Text("BACK")),
            //     ElevatedButton(onPressed: (){
            //       c=true;
            //       setState(() {});
            //     }, child: Text("Next") )
            //     ],
            //   ),
            // )


            BottomNavigationBar(
              currentIndex: val,
              onTap: (value) {

                setState(() {
                  val=value;
                });
              },
              items: [
                BottomNavigationBarItem(icon:Icon(Icons.home),label: "home"),
                BottomNavigationBarItem(icon:Icon(Icons.add_a_photo_outlined),label: "camera"),

              ],)
          ],
        ),
      ),
    ),
    );
  }
}
class test2 extends StatefulWidget {
  const test2({Key? key}) : super(key: key);

  @override
  State<test2> createState() => _test2State();
}
class _test2State extends State<test2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             margin: EdgeInsets.fromLTRB(0,15, 0, 10),
             height: 100,
             width: 100,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(
                 image: AssetImage('image/image.png'),
               ),

             ),

           ),
           Text("Hi Ritul Mangukiya",style: TextStyle(
               fontSize: 25,
               height: 1.5,
               fontWeight: FontWeight.bold
           ),),
           Text("Sing in With your account",style: TextStyle(
               fontSize: 20,
               height: 1.5,
// fontWeight: FontWeight.bold
               color: Colors.black26
           ),),
           Container(
             margin: EdgeInsets.all(15),
             child: TextField(
               decoration: InputDecoration(
// hintText:"",
                   labelText: "Email or phone number",
                   suffixIcon: Icon(Icons.visibility),
                   border: OutlineInputBorder(
                       borderSide: BorderSide(width: 1,)
                   )
               ),
             ),
           ),

           Container(
             margin: EdgeInsets.fromLTRB(5, 0, 200, 0),
             child: Text("Forgot email?",style: TextStyle(
                 fontSize: 17,
                 height: 1.5,
// fontWeight: FontWeight.bold
                 color: Colors.blue
             ),),
           ),
           Container(
             margin: EdgeInsets.fromLTRB(5, 0, 200, 0),
             child: Text("Create account",style: TextStyle(
                 fontSize: 17,
                 height: 1.5,
// fontWeight: FontWeight.bold
                 color: Colors.blue
             ),),
           ),
         ],
      ),
    );
  }
}


//page 2


class test1 extends StatefulWidget {
  const test1({Key? key}) : super(key: key);

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        children: [
          Text("Streamline your courses",style:TextStyle(
              fontSize: 30,
              height: 1.5,
              fontWeight: FontWeight.bold
          ),) ,
          Text("Bundied categories appear as groups in your feed you can always change this last.",style:TextStyle(
              fontSize: 18,
              // height: 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.black38
          ),),
          SizedBox(
            height: 20,
          ),

          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Ritul"),
                  trailing: Icon(Icons.add_a_photo_outlined),
                  subtitle: Text("Ritul Mangukiya"),

                );
              },
              separatorBuilder: (context, index) {
                return Divider(color: Colors.white,);
              },
              itemCount: 5)
        ],
      ),
    );
  }
}







