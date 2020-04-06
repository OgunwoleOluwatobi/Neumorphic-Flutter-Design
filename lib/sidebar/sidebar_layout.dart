import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'sidebar_item.dart';

class SidebarLayout extends StatefulWidget {
  @override
  _SidebarLayoutState createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> with AfterLayoutMixin {
  int selectedIndex = 0;
  LabeledGlobalKey _walletKey = LabeledGlobalKey("walletKey");
  LabeledGlobalKey _resturantKey = LabeledGlobalKey("resturantKey");
  LabeledGlobalKey _myCartKey = LabeledGlobalKey("myCartKey");
  LabeledGlobalKey _myProfileKey = LabeledGlobalKey("myProfileKey");

  RenderBox renderBox;
  double startYP;

  void onTabTap(int index) {
    setState(() {
      selectedIndex = index;
      switch (selectedIndex) {
        case 0:
          renderBox = _walletKey.currentContext.findRenderObject();
          break;
        case 1:
          renderBox = _resturantKey.currentContext.findRenderObject();
          break;
        case 2:
          renderBox = _myCartKey.currentContext.findRenderObject();
          break;
        case 3:
          renderBox = _myProfileKey.currentContext.findRenderObject();
          break;
      }
      startYP = renderBox.localToGlobal(Offset.zero).dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          width: 90,
          top: 0,
          bottom: 0,
          right: 0,
          child: ClipPath(
            clipper: SidebarClipper(startYP == null ? 0 : startYP-40, startYP == null ? 0 : startYP+80),
            child: Container(
              decoration: BoxDecoration(
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
                  stops: [
                    0.05, 0.3, 0.5, 0.55, 0.8, 1
                  ]
                )
              ),
            ),
          ),
        ),
        Positioned(
          right: -13,
          top: 0,
          bottom: 0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.dashboard, 
                color: Colors.white,
                ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                height: 120,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SidebarItem(
                      key: _walletKey,
                      text: "Wallet",
                      onTabTap: () {
                        onTabTap(0);
                      },
                      isSelected: selectedIndex == 0,
                    ),
                    SidebarItem(
                      key: _resturantKey,
                      text: "Resturants",
                      onTabTap: () {
                        onTabTap(1);
                      },
                      isSelected: selectedIndex==1,
                    ),
                    SidebarItem(
                      key: _myCartKey,
                      text: "My cart",
                      onTabTap: () {
                        onTabTap(2);
                      },
                      isSelected: selectedIndex==2,
                    ),
                    SidebarItem(
                      key: _myProfileKey,
                      text: "My Profile",
                      onTabTap: () {
                        onTabTap(3);
                      },
                      isSelected: selectedIndex==3,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
            ],
          )
        )
      ],
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      renderBox = _walletKey.currentContext.findRenderObject();
      startYP = renderBox.localToGlobal(Offset.zero).dy;
    });
  }
}

class SidebarClipper extends CustomClipper<Path> {

  final double startYP, endYP;

  SidebarClipper(this.startYP, this.endYP); 

  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    //Up Curve
    path.moveTo(width, 0);
    path.quadraticBezierTo(width/3, 5, width/3, 70);
    //CustomCurve
    path.lineTo(width/3, startYP);
    path.quadraticBezierTo(width/3 - 2, startYP+15, width/3 - 10, startYP + 25);
    path.quadraticBezierTo(3, startYP+45, 3, startYP+60);
    path.quadraticBezierTo(3, endYP-45, width/3 - 10, endYP - 25);
    path.quadraticBezierTo(width/3 -2, endYP-15, width/3, endYP);

    //Down Curve
    path.lineTo(width/3, height-70);
    path.quadraticBezierTo(width/3, height-5, width, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}