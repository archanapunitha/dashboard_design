import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashBoard extends StatelessWidget {

  Items item1=new Items(
      title: "Apple",
      subtitle: "",
      event: "",
      img: "assets/Apple.png"
  );
  Items item2=new Items(
      title: "Green Apple",
      subtitle: "",
      event: "",
      img: "assets/green_apple.png"
  );
  Items item3=new Items(
      title: "Black Apple",
      subtitle: "",
      event: "",
      img: "assets/blk_apple.png"
  );
  Items item4=new Items(
      title: "Mango",
      subtitle: "",
      event: "",
      img: "assets/mango.png"
  );
  Items item5=new Items(
      title: "Papaya",
      subtitle: "",
      event: "",
      img: "assets/papaya.png"
  );
  Items item6=new Items(
      title: "Pine Apple",
      subtitle: "",
      event: "",
      img: "assets/pine_apple.png"
  );
  Items item7=new Items(
      title: "Strawberry",
      subtitle: "",
      event: "",
      img: "assets/strawberry.png"
  );
  Items item8=new Items(
      title: "Grape",
      subtitle: "",
      event: "",
      img: "assets/berry.png"
  );

  @override
  Widget build(BuildContext context) {
    List <Items> MyList=[item1,item2,item3,item4,item5,item6,item7,item8];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16,right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: MyList.map((data){
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.white38.withOpacity(.4),
                    Colors.white38.withOpacity(.1),
                  ]
                ),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                 image: AssetImage(data.img),
                  fit: BoxFit.contain,
                  alignment: Alignment.center

                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(data.title,style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                  SizedBox(
                    height: 14,
                  ),
                  Text(data.subtitle,style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
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
