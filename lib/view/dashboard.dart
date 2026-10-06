import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), centerTitle: true),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpofIpFIfjEb3Y-1AfM9M-el1AkddzpaEAApll6zEOg&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "Hot News! Read now on Hot Topic",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "oct 6, 2026",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 20,
                        child: Container(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpofIpFIfjEb3Y-1AfM9M-el1AkddzpaEAApll6zEOg&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "Hot News! Read now on Hot Topic",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "oct 6, 2026",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 20,
                        child: Container(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpofIpFIfjEb3Y-1AfM9M-el1AkddzpaEAApll6zEOg&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "Hot News! Read now on Hot Topic",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "oct 6, 2026",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 20,
                        child: Container(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpofIpFIfjEb3Y-1AfM9M-el1AkddzpaEAApll6zEOg&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 20,
                          bottom: 20,
                        ),
                        height: size.height / 4,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "Hot News! Read now on Hot Topic",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 20,
                        child: Container(
                          width: size.width / 2,
                          child: Text(
                            "oct 6, 2026",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 20,
                        child: Container(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}