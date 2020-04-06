import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphism/chart.dart';
import 'sidebar/sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuemorphic Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    double width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
      ));
      

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: 0,
            bottom: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 65,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, bottom: 8),
                        child: Text(
                          "Hello!",
                          style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "Ogunwole",
                          style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "Oluwatobi",
                          style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ClayContainer(
                          height: 300,
                          width: width*0.8,
                          depth: 15,
                          spread: 12,
                          borderRadius: 16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                                child: Text(
                                  "Total Balance",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: Text(
                                  "₦425,046",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black
                                  ),
                                ),
                              ),
                              Chart()
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ClayContainer(
                            emboss: true,
                            height: 180,
                            width: width*0.35,
                            borderRadius: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                                  child: Text(
                                    "Balance for today",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black45
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    "₦125,022",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black45
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black45
                                  ),
                                )
                              ],
                            ),
                          ),
                          ClayContainer(
                            height: 180,
                            width: width*0.35,
                            borderRadius: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                                  child: Text(
                                    "Unlock Limit of ₦10,000",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    "By linking your bank card",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black45
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 16, right: 16),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xFFFF559F),
                                          Color(0xFFCF5CCF),
                                          Color(0xFFFF57AC),
                                          Color(0xFFFF6091),
                                          Color(0xFFFF8D7E),
                                          Color(0xFFB6BAA6)
                                        ],
                                      )
                                    ),
                                    child: Icon(Icons.arrow_forward, color: Colors.white,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "March 2020", 
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            Text(
                              "-₦52,000",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w900
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          ListTile(
                            leading: ClayContainer(
                              width: 40,
                              height: 40,
                              borderRadius: 8,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFF559F),
                                      Color(0xFFCF5CCF),
                                      Color(0xFFFF57AC),
                                      Color(0xFFFF6091),
                                      Color(0xFFFF8D7E),
                                      Color(0xFFB6BAA6)
                                    ]
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop,
                                child: Icon(
                                  Icons.local_pizza,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                            title: Text(
                              "Babcock Supermarket POS",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            subtitle: Text(
                              "12 March 13:07",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            trailing: Text(
                              "-₦1,025",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                          ListTile(
                            leading: ClayContainer(
                              width: 40,
                              height: 40,
                              borderRadius: 8,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFF559F),
                                      Color(0xFFCF5CCF),
                                      Color(0xFFFF57AC),
                                      Color(0xFFFF6091),
                                      Color(0xFFFF8D7E),
                                      Color(0xFFB6BAA6)
                                    ]
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop,
                                child: Icon(
                                  Icons.local_pizza,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                            title: Text(
                              "Shoprite Supermarket POS",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            subtitle: Text(
                              "12 March 13:07",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            trailing: Text(
                              "-₦15,326",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                          ListTile(
                            leading: ClayContainer(
                              width: 40,
                              height: 40,
                              borderRadius: 8,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFF559F),
                                      Color(0xFFCF5CCF),
                                      Color(0xFFFF57AC),
                                      Color(0xFFFF6091),
                                      Color(0xFFFF8D7E),
                                      Color(0xFFB6BAA6)
                                    ]
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop,
                                child: Icon(
                                  Icons.local_pizza,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                            title: Text(
                              "Babcock Supermarket POS",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            subtitle: Text(
                              "12 March 13:07",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            trailing: Text(
                              "-₦1,025",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                          ListTile(
                            leading: ClayContainer(
                              width: 40,
                              height: 40,
                              borderRadius: 8,
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFF559F),
                                      Color(0xFFCF5CCF),
                                      Color(0xFFFF57AC),
                                      Color(0xFFFF6091),
                                      Color(0xFFFF8D7E),
                                      Color(0xFFB6BAA6)
                                    ]
                                  ).createShader(bounds);
                                },
                                blendMode: BlendMode.srcATop,
                                child: Icon(
                                  Icons.local_pizza,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                            title: Text(
                              "Babcock Supermarket POS",
                              style: TextStyle(
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            subtitle: Text(
                              "12 March 13:07",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            trailing: Text(
                              "-₦1,025",
                              style: TextStyle(
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ),
          Positioned(
            width: 75,
            height: 110,
            top: 0,
            right: 0,
            child: ClipPath(
              clipper: DashClipper(),
              child: AnimatedOpacity(
                opacity: _scaffoldKey.currentState == null ? 1 : _scaffoldKey.currentState.hasEndDrawer ? 0 : 1,
                duration: Duration(seconds: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color:  Color(0xFFFF559F),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -8,
            top: 30,
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState.openEndDrawer();
              },
              child: Container(
                width: 60,
                height: 60,
                child: Icon(
                  Icons.dashboard, 
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      endDrawer: SidebarLayout(),
    );
  }
}

class DashClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    //Up Curve
    path.moveTo(width, 0);
    path.lineTo(width-35, 30);
    path.quadraticBezierTo(0, 70, width-35, 90);
    path.lineTo(width, height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}