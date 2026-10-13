import 'package:ews/view/detailpage.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {

  horizontalitem(size, String title, url, date){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => detailpage(),
          ),
        );
      },


      child: Stack(
        children: [

          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 8),
            height: size.height/4.5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            width: size.width/1.3,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 8),
            height: size.height/4.5,
            width: size.width/1.3,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned( bottom: 40,left: 30,
              child: Container(width: size.width/2,
                  child: Text(title,
                    overflow: TextOverflow.ellipsis,maxLines: 2,
                    style: TextStyle(color: Colors.white),)
              )),
          Positioned( bottom: 20,left: 30,
              child: Container(width: size.width/2,
                  child: Text(date,
                    overflow: TextOverflow.ellipsis,maxLines: 1,
                    style: TextStyle(color: Colors.white),)
              )),
          Positioned( bottom: 20,right: 30,
              child: Container(
                  child: Icon(Icons.play_circle,color: Colors.white,size: 30,)
              ))
        ],
      ),
    );
  }

  static verticalllistitem(size,String title, url,date,source){
    return  Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      fit: BoxFit.cover,
                      url),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                child: Center(
                  child: Icon(Icons.play_circle_fill_rounded,size: 50,
                    color: Colors.white,),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width/2,
                child: Text(title, maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: size.width/2.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8,
                          right: 15,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          color:Colors.lightGreenAccent,borderRadius: BorderRadius.circular(15) ),
                      
                      child: Text(source,style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    ),
                    Text(date,style: TextStyle(
                        color: Colors.black),),
                  ],
                ),
              )
            ],
          )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [

            //horizontal list data
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // horizontalitem(size, String title, url, date){
                  horizontalitem(size,
                      "Gym Fest",
                      "https://i.pinimg.com/736x/a2/a"
                          "5/6c/a2a56c841aeab6c144a8cc"
                          "90d9e59739.jpg",
                      "05, FEB 2026"),
                  horizontalitem(size,
                      "PowerLifting News",
                      "https://i.pinimg.com/"
                          "736x/6a/13/f1/6a13f184c459b009488919a5d06e24c8.jpg",
                      "02, FEB 2026"),
                  horizontalitem(size,
                      "Muscle Building",
                      "https://i.pinimg.com/736x/0d/48/"
                          "92/0d489229e3339e3c07"
                          "9e31fc753ffab3.jpg",
                      "09, FEB 2026"),
                ],
              ),
            ),

            //vertical list data
            Container(
              height: size.height/1.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    verticalllistitem(size,
                        "PowerBuilding Context",
                        "https://i.pinimg.com/736x/82/b0/b4/82b0b4ff4b22f0fb06e4ebe6f65500c1.jpg",
                        "02 FEB 2026", "Prime NEWS"),
                    verticalllistitem(size,
                        "Cat Lifter NEWS",
                        "https://i.pinimg.com/736x/ab/4d/9e/ab4d9"
                            "e77c4b2a78522d9e96bc2b27c2d.jpg",
                        "02 FEB 2026", "Prime NEWS"),
                    verticalllistitem(size,
                        "GymRat News",
                        "https://i.pinimg.com/1200x/"
                            "39/48/ec/3948ec4f3f384f5bdbcfb0fcb735bf3d.jpg",
                        "02 FEB 2026", "Prime NEWS"),
                    verticalllistitem(size,
                        "Muscular Cat News",
                        "https://i.pinim"
                            "g.com/736x/52/80/49/"
                            "5280493fedfe637404b20265e0562120.jpg",
                        "02 FEB 2026", "Prime NEWS")

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}