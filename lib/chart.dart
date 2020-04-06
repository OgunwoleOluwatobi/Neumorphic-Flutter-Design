import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;

      return ClipPath(
        clipper: ChartClip(),
        child: Container(
          width: width*0.8,
          height: 240,
          decoration: BoxDecoration(
              color: Colors.transparent),
          child: LineChart(mainData(),),
      ),
    );
  }
}

class ChartClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;
    //Up Curve
    path.lineTo(0, height-20);
    path.quadraticBezierTo(0, height, 18, height);
    path.lineTo(width-20, height);
    path.quadraticBezierTo(width, height, width, height-20);
    path.lineTo(width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

LineChartData mainData() {
  List<Color> gradientColors = [
    Color(0xFFFF559F),
    //Color(0xFFCF5CCF),
    Color(0xFFFF57AC),
    //Color(0xFFFF6091),
    Color(0xFFFF8D7E),
    Color(0xFFB6BAA6)
  ];
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      clipToBorder: false,
      titlesData: FlTitlesData(show: false),
      borderData:
          FlBorderData(show: false, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0.49,
      maxX: 10.49,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 4.5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(12, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.2)).toList(),
          ),
        ),
      ],
    );
  }