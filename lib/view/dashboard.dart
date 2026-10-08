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
                            "Hot News on the Top of Mt Everest",
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
                            "Hot News in the top of mount everest",
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
            Row(
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
                        borderRadius: BorderRadiusGeometry.circular(20),
                        child: Image.network(
                          fit: BoxFit.cover,
                          "https://imgs.search.brave.com/2AvCYVVMRrsPdZeJB6saNO_CLJcSMdfeJeQx3wO_KIk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j"
                          "/b20vaW1hZ2VzL0kv/NzF5a3JMZklYeEwu/anBn",
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Icon(
                          Icons.play_circle_fill_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
