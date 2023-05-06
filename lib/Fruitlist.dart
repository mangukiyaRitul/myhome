import 'package:flutter/material.dart';
import 'package:ritul/Fruitclasss.dart';

class Flruitlist extends StatefulWidget {
  const Flruitlist({Key? key}) : super(key: key);

  @override
  State<Flruitlist> createState() => _FlruitlistState();
}

class _FlruitlistState extends State<Flruitlist> {
  bool test = false;
  int testindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: fruitList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Padding(

                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      borderRadius:BorderRadius.circular(10) ,
                      // onLongPress: (){
                      //   test = true;
                      //   setState(() { });
                      // },
                      onTap: (){
                        setState(() {
                          testindex = index ;

                        });
                        },
                        splashColor: testindex == index ? fruitList[index]['color'].withOpacity(0.0): fruitList[index]['color'].withOpacity(0.2),

                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: testindex == index ? fruitList[index]['color'].withOpacity(0.50): fruitList[index]['color'].withOpacity(0.20),

                            border: Border.all( color: fruitList[index]['color'])
                        ),
                        child: Image.asset(fruitList[index]['image']),
                      ),
                    ),
                  );
                },),
              ),
            ),
            SizedBox(
              height: 20,
              child: ListView(

                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: fruitList.map((e) {
                  int index = fruitList.indexOf(e);
                  return Padding(
                    padding:  testindex == index ?  EdgeInsets.all(1):EdgeInsets.all(2),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: testindex == index ? Colors.grey : Colors.grey.shade400,
                          shape: BoxShape.circle
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
