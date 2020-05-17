import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class Chart extends StatelessWidget {
  
  Chart({this.mySpots,this.chartColor});
  final mySpots;
  final List<Color> chartColor;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0xFF1D1E33)),
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                mainData(mySpots,chartColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<Color> gradientColors = [
    const Color(0xFFFE0739),
  ];

LineChartData mainData(mySpots,List<Color> myColors) {

  List<FlSpot> spots = mySpots;
  return LineChartData(
    gridData: FlGridData(
      show: false,
    ),
    titlesData: FlTitlesData(
      show: false,
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        textStyle:
            const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
        getTitles: (value) {
          switch (value.toInt()) {
            case 2:
              return 'MAR';
            case 5:
              return 'JUN';
            case 8:
              return 'SEP';

          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        textStyle: const TextStyle(
          color: Color(0xff67727d),
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 1:
              return '10k';
            case 3:
              return '30k';
            case 5:
              return '50k';
          }
          return '';
        },
        reservedSize: 28,
        margin: 12,
      ),
    ),
    borderData:
        FlBorderData(show: false, border: Border.all(color: const Color(0xff37434d), width: 1)),
    
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        colors: myColors,
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          colors: myColors.map((color) => color.withOpacity(0.3)).toList(),
        ),
      ),
    ],
  );
}
