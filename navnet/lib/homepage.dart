// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:navnet/Inquary.dart';
import 'package:navnet/Our_Service.dart';
import 'package:navnet/gallary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(BuildContext context) {
    print("object Clocked");
  }

  int _selectedindex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Service(),
    Inquary()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Navneet Construction",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(228, 237, 58, 9),
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigoAccent),
              child: Text("Menu"),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text("HOME"),
              onTap: () {
                Navigator.pop(context);
              },
            ), //home in menu
            ListTile(
              leading: Icon(
                Icons.home_repair_service,
                color: Colors.black,
              ),
              title: const Text("Our Services"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.construction_rounded,
                color: Colors.black,
              ),
              title: const Text("Our Projects"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.photo_library,
                color: Colors.black,
              ),
              title: const Text("Gallary"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gallary()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_center,
                color: Colors.black,
              ),
              title: const Text("Inquary"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Inquary()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
                color: Colors.black,
              ),
              title: const Text("Why Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: Colors.black,
              ),
              title: const Text("About Us"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(80, 16, 157, 227)),
        // color: Color.fromRGBO(51, 232, 126, 0.863),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 70,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/insta.png")),
                      ),
                    ), //instagram image
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbInoy_b6vJ3EyPSUF2F2D7Nze9wX0hG-DyQ&usqp=CAU")),
                      ),
                    ), //facebook image
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/60/60580.png")),
                      ),
                    ), //twiter image
                    Container(
                      margin: EdgeInsets.only(left: 35),
                      height: 68,
                      width: 150,
                      child: Column(
                        children: [
                          Text(
                            "WELCOME TO NAVNEET CONSTRUCTION",
                            style: TextStyle(
                                fontSize: 6,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 241, 31, 31)),
                          ),
                          Text(
                            "A Company And Quality",
                            style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(255, 238, 16, 16)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 51),
                      height: 68,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Images/logo.jpg"),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
              ), // first container insta facebook wtitter and logo
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Our Services",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 15, 15),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 190,
                          width: 190,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.eia.gov/energyexplained/solar/images/powertower1.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Gallary())));
                            },
                            child: Text(
                              "Soloar",
                              style: TextStyle(color: Colors.red, fontSize: 24),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://images.adsttc.com/media/images/55f1/991f/99e9/ba0f/1000/0080/newsletter/tecnopolo-bologna-4.jpg?1441896728",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Industrial & College Building Project.",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://www.fusionkc.com/wp-content/uploads/commercial-space.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Commercial Building Project.",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://5.imimg.com/data5/SELLER/Default/2021/6/RQ/NL/HL/12325058/residential-construction-project-500x500.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Residential Building Project.",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://assets-news.housing.com/news/wp-content/uploads/2018/06/24201243/Bullet-train-Gujarat-farmers-up-in-arms-oppose-land-surveys-FB-1200x628-compressed.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Land Survey and Land Procurement​",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Our Projects",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 15, 15),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        //   margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://media.istockphoto.com/id/185244309/photo/work-in-progress.jpg?s=612x612&w=0&k=20&c=ECQ9StWhFTfFjWg_yt8ITEyAuZpRLVV8akD20jagc-Y=",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Current Projects",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://media.istockphoto.com/id/1146511023/photo/3d-check-list-with-completed-stamp-on-chalkboard-background-3d-rendering.jpg?s=612x612&w=0&k=20&c=sehscpRlw4tRinZVO_-a4a3FHQ-tG0NxFpjzE5mX6dI=",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Compeleted Projects",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPwd1dbTKCnBMLiJaLSrDNpwRI0HKoUe9wmQ&usqp=CAU",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Industrial Projects",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://gumlet.assettype.com/theceo%2Fimport%2F2020%2F06%2FIndian-projects-by-the-modi-government.jpg?w=1200&auto=format%2Ccompress&ogImage=true&enlarge=true",
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: Text(
                          "Government Projects",
                          style: TextStyle(
                              backgroundColor: Color.fromARGB(255, 174, 13, 13),
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gallary",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 15, 15),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn-iopdd.nitrocdn.com/zaRrVPNZirTZZmiWtgULXJtAtnmRczHp/assets/images/source/rev-52219eb/blog/wp-content/uploads/2022/07/Front-And-Back-Door-Layouts-Of-A-Modest-Home-1.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGy4CBBSZRU2uTtb7BV802cZIt8dk5QdBq--TntbR4P1gEbKmh-EdiUfBLl2SI3pDKDx0&usqp=CAU"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.homebazaar.com/knowledge/wp-content/uploads/2022/09/FeatureImage_Best-12-Single-Floor-House-Design.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.thehousedesigners.com/images/plans/URD/bulk/6583/the-destination-front-rendering_m.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 190,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL5eX0KxcGgLUwotZPOqZtOdAqjW3e3vfFu0qjmKj-DHz0jfT0pDIbRTgiytY1NGU2E9U&usqp=CAU"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "About Us",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 15, 15),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                          "Since 2013, NAVNEET Group engaged in civil construction business. We are civil construction contractors, specialized in constructing Solar Power Plant, multi-storied residential, commercial and various industrial structures. We had successfully completed many buildings, small bridges and culverts and quality assured concrete works. We had also undertaken construction of road, drainage & other infrastructural development projects. Interior work extremely finishing and quality work."),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "With a vast experience in the field of civil construction in Gujarat for more than 10 years, we have built our reputation through our excellent service and high standard of workmanship. Our expert team employs its experience and expertise in using modern equipments for better and reliable civil construction.​")
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 30,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Directors of the Company",
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 15, 15),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "",
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        "",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: double.maxFinite,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped(context),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_repair_service), label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_center), label: "Inquary")
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedindex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          elevation: 5),
    );
  }
}
