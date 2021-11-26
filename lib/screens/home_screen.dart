import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_testex/screens/widgets/item.dart';
import 'package:restaurant_testex/utilities/constants.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 245, 247),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: width*0.05,
                right: width*0.05,
                top: height*0.05,
                child: Row(
                  children: [
                    Text('Red Square, 17', style: kTitleTextStyle,),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(width: width*0.13,),
                    Icon(Icons.message),
                    SizedBox(width: 5.0,),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("images/user.png"),
                          fit: BoxFit.fill
                        ),
                      ),
                    )
                  ],
            ),),
            Positioned(
              top: height*0.11,
              left: width*0.055,
              child: Text(
                'Entrance 3, intercom 15, appartment 15, floor 5',
                style: kDescriptionTextStyle,
              ),
            ),
            Positioned(
              top: height*0.2,
              child: Container(
                padding: EdgeInsets.all(20.0),
                width: width,
                height: height*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25) , topRight: Radius.circular(25)),
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40.0,
                        child: IconButton(
                          icon: Icon(CupertinoIcons.square),
                          splashColor: Color.fromARGB(255, 244, 245, 247),
                          color: Colors.redAccent,
                          onPressed: () {  },
                        ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 244, 245, 247),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          child: IconButton(
                            icon: Icon(Icons.view_list),
                            splashColor: Color.fromARGB(255, 244, 245, 247),
                            onPressed: () {  },
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 244, 245, 247),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/egg.png',
                                  width: 25.0,
                                  color: Color(0xFFFF5656),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Breakfast',
                                  style: TextStyle(
                                    color: Color(0xFFFF5656),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFDFDF),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'images/noodles.png',
                                width: 25.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'Noodles',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 244, 245, 247),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: height * 0.6,

                    child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,item) => EatItem(),
                      separatorBuilder: (_, index) => SizedBox(width: 10),
                      itemCount: 2,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height*0.91,
              child: Container(
                width: width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25) , topRight: Radius.circular(25)),
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
                child: Center(
                  child: Text('30 min', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                ),
            ),
            ),
          ],
        ),
      )
    );
  }
}
