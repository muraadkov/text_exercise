import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_testex/utilities/constants.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 245, 247),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack( children: [
          Positioned(
              left: width*0.05,
              right: width*0.05,
              child: Center(child: Text('Pasta', style: kTitleTextStyle))),
          Positioned(
            left: width*0.05,
            right: width*0.05,
            top: height*0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.grey[700]
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.grey[300]
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.grey[300]
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.grey[300]
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.grey[300]
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            top: height*0.1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: width,
              height: height*0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center ,
                  children: [
                    Image.asset(
                      "images/pasta.png",
                      width: 350,
                      height: 250,
                    ),
                    Row(children: [
                      Icon(CupertinoIcons.compass),
                      SizedBox(width: 5.0,),
                      Text('+10 min'),
                    ]),
                    SizedBox(height: 10.0,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Pasta Al Pomodoro\nwith Basil',
                          style: kNameTextStyle,),
                        ),
                        Icon(
                          CupertinoIcons.minus
                        ),
                        SizedBox(width: 5.0,),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: Text('1', style: TextStyle(color: Colors.white),),),
                        ),
                        SizedBox(width: 5.0,),
                        Icon(
                            CupertinoIcons.plus
                        ),

                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 245, 247),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('320', style: kNumberTextStyle,),
                              Text('gram', style: kDescriptionTextStyle,),
                            ],
                          ),
                          Column(
                            children: [
                              Text('740', style: kNumberTextStyle,),
                              Text('ккал', style: kDescriptionTextStyle,),
                            ],
                          ),
                          Column(
                            children: [
                              Text('10', style: kNumberTextStyle,),
                              Text('белки', style: kDescriptionTextStyle,),
                            ],
                          ),
                          Column(
                            children: [
                              Text('10', style: kNumberTextStyle,),
                              Text('жиры', style: kDescriptionTextStyle,),
                            ],
                          ),
                          Column(
                            children: [
                              Text('155', style: kNumberTextStyle,),
                              Text('углеводы', style: kDescriptionTextStyle,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Text('Pasta, extra virgin olive oil, fresh basil,\ntomatoes, garlic, black pepper, mixed dry\nherbs, rock salt, parmigiano reggiano', style: kDescriptionSecondTextStyle  ,),
                      ],
                    ),

                  ],
                ),

              ),
            ),
          ),
          Positioned(
            top: height*0.88,
            child: Container(
                  width: width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.bag),
                  Text('40 min, \$6.30', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
        ]),

      ),
    );
  }
}
