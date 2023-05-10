import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrpages =[
      'RemoveBackground',
      'sudocu',
      'tictoc',
      'collingpage',
      'listview',
      'instagram',
      'insta',
      'loveshayari',
      'redio',
      'Dialog',
      'RR',
      'font',
      'listview2',
      'image',
      'account',
      'mytext',
      'Myslider',
      'MyComponrt',
      'bulb',
      'My_stack',
      'Flruitlist',
    ];
    return Scaffold(
      appBar: AppBar(title: Text('My App'),),
      body: GridView.builder(itemCount: arrpages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10) ,

        itemBuilder: (context, index) {
          return Container(color: Colors.amber,child: TextButton(onPressed:() {
            Navigator.pushNamed(context, arrpages[index]);
          }, child: Text(arrpages[index])),);
        },),
    );

  }
}
