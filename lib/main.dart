import 'package:dashboard_design/GridDashBoard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body:
        Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Foody Fruits",style: GoogleFonts.openSans(
                          textStyle:TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Home",style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )
                      ),)
                    ],
                  ),
                  IconButton(
                      alignment: Alignment.topRight,
                      icon: SvgPicture.asset("assets/notification.svg",
                        height: 30.0,),
                      onPressed: (){
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            GridDashBoard(),
          ],
        )
    );
  }
}
