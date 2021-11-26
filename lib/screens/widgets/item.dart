import 'package:flutter/material.dart';
import 'package:restaurant_testex/screens/description_screen.dart';
import 'package:restaurant_testex/utilities/constants.dart';

class EatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.83,
      height: height,
      child: Card(
        color: Color.fromARGB(255, 244, 245, 247),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: width * 0.6,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -20,
                    top: -15,
                    child: Container(
                      height: height*0.4,
                      width: width*0.65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("images/pasta.png"),
                            fit: BoxFit.fill,
                          ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
    SizedBox(height: 9.0,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Pasta Al Pomodoro with\nBasil', style: kNameTextStyle,),
    ),
            SizedBox(height: 9.0,),
    Container(
      margin: EdgeInsets.only(left: 10.0),
    height: 30,
    width: 70,

      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: ElevatedButton(
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => DescriptionPage()));},
        child: Center(
          child: Text('\$6.30', style: TextStyle(
            color: Colors.white
          ),
          )
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                )
            )
        ),
      ),
    )
    ],
        ),
      ),
    );
  }
}
