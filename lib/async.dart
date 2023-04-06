import 'package:flutter/material.dart';

class async extends StatefulWidget {
  const async({Key? key}) : super(key: key);

  @override
  State<async> createState() => _asyncState();
}

class _asyncState extends State<async> {

 int i=0;
 Stream<int> get()
  async* {
    print("hello");
    for (i=1;i<=5;i++)
  {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
    // print("hello");
    // return 100;
  }
    Future<int>dis() async {
      for (i=1;i<=5;i++)
      {
        await Future.delayed(Duration(seconds: 1));
      }
      return i;
  }
    @override
  // void initState() {
    // TODO: implement initState
  //   super.initState();
  //   dis().then((value){
  //     print(value);
  //     get().listen((value){
  //       print("$value");
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: get(),
        builder: (context, snapshot) {
          // print(snapshot)
          if(snapshot.connectionState==ConnectionState.waiting)
            {
              return Container(
                child: CircularProgressIndicator(),
              );

            }
          else
            { int r=snapshot.data as int;
            return Container(
              child: Text("$r"),
            );

            }
        },
      ),
    );
  }
}