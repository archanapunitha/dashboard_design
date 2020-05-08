import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashBoard extends StatelessWidget {

  Items item1=new Items(
      title: "Calender",
      subtitle: "January,thursday",
      event: "3 Events",
      img: "assets/calender.png"
  );
  Items item2=new Items(
      title: "Groceries",
      subtitle: "BoCali,Apple",
      event: "4 Items",
      img: "assets/groceries.png"
  );
  Items item3=new Items(
      title: "Locations",
      subtitle: "Simmakal,Madurai",
      event: "3 Events",
      img: "assets/map.png"
  );
  Items item4=new Items(
      title: "Activity",
      subtitle: "Rose Favirited your post",
      event: "2 Events",
      img: "assets/gear.png"
  );
  Items item5=new Items(
      title: "To do",
      subtitle: "Home work,Design",
      event: "3 Events",
      img: "assets/man.png"
  );
  Items item6=new Items(
      title: "festival",
      subtitle: "Traditional Special",
      event: "5 Events",
      img: "assets/celebration.png"
  );
  Items item7=new Items(
      title: "Future Goal",
      subtitle: "On Focus",
      event: "3 Events",
      img: "assets/goal.png"
  );
  Items item8=new Items(
      title: "Current News",
      subtitle: "Vision",
      event: "3 Events",
      img: "assets/news.png"
  );

  @override
  Widget build(BuildContext context) {
    List <Items> MyList=[item1,item2,item3,item4,item5,item6,item7,item8];
    var color=0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16,right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: MyList.map((data){
            return Container(
              decoration: BoxDecoration(
                color: Color(color),borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(data.img,width: 42,),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.title,style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.subtitle,style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  Text(data.event,style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),),
                ],
              ),
            );
          }).toList()
      ),

    );
  }
}

class Items{
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title,this.subtitle,
    this.event,this.img});
}
