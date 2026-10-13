import 'package:ews/view/dashboard.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => detailpageState();
}

class detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55),
            Stack(
              children: [
                Container(
                  height: size.height / 4.5,
                  width: size.width,
                  child: Image.network(
                    fit: BoxFit.cover,
                    "https://i"
                    ".pinimg.com/736x/c8/cf/2e/c8cf2e"
                    "fa1fcfbdcfe99f42c9ad969038.jpg",
                  ),
                ),
                Container(
                  height: size.height / 4.5,
                  width: size.width,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.share, color: Colors.white, size: 40),
                  ),
                ),
                Container(
                  height: size.height / 4.4,
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Bulking Bad".toUpperCase(),
                style: TextStyle(fontSize: 20),
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Author Name"), Text("10/13/2026")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Bulking Bad is the series of Gymrats which has been directed by "
                "the gymrats of the gym names Bulking is the passion which has won "
                "the oscars in the year of 2027",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Related Videos", style: TextStyle(fontSize: 18)),
            ),
            dashboardState.verticalllistitem(
              size,
              "Go gain or Go Home",
              "https://i.pi"
                  "nimg.com/736x/b1/9b/b2/b19bb2ce2ffe38004d882bb6a01844d1.jpg",
              "10/13/206",
              "Miguel Fitness",
            ),

            dashboardState.verticalllistitem(
              size,
              "No Pain No Gain",
              "https://i.pin"
                  "img.com/1200x/40/db/20/40db206fc169ee895b3b3b79086c654d.jpg",
              "10/13/206",
              "Miguel Fitness",
            ),

            dashboardState.verticalllistitem(
              size,
              "Say the Gym Name",
              "https://i."
                  "pinimg.com/736x/3c/dd/d4/3cddd413642c67472b37c5467ee9b6a7.jpg",
              "10/13/206",
              "Miguel Fitness",
            ),

            dashboardState.verticalllistitem(
              size,
              "Go Big Or Go Home",
              "https"
                  "://i.pinimg.com/1200x/87/07/5c/87075ce66d236cb5d69daada48f810a7.jpg",
              "10/13/206",
              "Miguel Fitness",
            ),
          ],
        ),
      ),
    );
  }
}
