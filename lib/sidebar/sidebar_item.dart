import 'package:flutter/material.dart';
import '../styleguide/text_styles.dart';

class SidebarItem extends StatelessWidget {

  final isSelected;
  final String text;
  final Function onTabTap;

  const SidebarItem({Key key, this.isSelected, this.text, this.onTabTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: GestureDetector(
        onTap: onTabTap,
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: isSelected ? selectedTabStyle : defaultTabStyle,
              child: Container(
                height: 30,
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}