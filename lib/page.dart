import 'package:flutter/material.dart';

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.share,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          backgroundColor: Colors.white,
          elevation: 20,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 20,
          iconSize: 30,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              _currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("•")),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/botttom (2).png",
                  height: 30,
                  width: 30,
                ),
                title: Text("•")),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/botttom (1).png",
                  height: 30,
                  width: 30,
                ),
                title: Text("•")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("•"))
          ]),
    );
  }
}

class PageBody extends StatefulWidget {
  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("assets/images/person.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Stene Back",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Front-end Devolopers",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Power levle 5",
                            style: TextStyle(color: Colors.orange[900]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
          child: Container(
            child: Text(
              "Thave 11 years commercial experience providing front-end development, producing responsive websites and exceptional user experience.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget>[
              Text(
                "SUPER POWERS",
                style: TextStyle(
                    color: Colors.blue[700], fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 1,
                  width: 220,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Container(
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: <Widget>[
              list(
                icon: "assets/images/logo (1).png",
              ),
              list(
                icon: "assets/images/logo (2).png",
              ),
              list(
                icon: "assets/images/logo (3).png",
              ),
              list(
                icon: "assets/images/logo (4).png",
              ),
              list(
                icon: "assets/images/logo (5).png",
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/back.png",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                    Positioned(
                        top: 15,
                        left: 25,
                        child: Text(
                          "5+",
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        ))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class list extends StatelessWidget {
  const list({
    Key key,
    this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/back.png",
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          ),
          Positioned(
              top: 10,
              left: 18,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  icon,
                  height: 50,
                  width: 50,
                ),
              ))
        ],
      ),
    );
  }
}
