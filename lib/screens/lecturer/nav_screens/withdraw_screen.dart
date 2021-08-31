import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:learnium/utils/constants/constants.dart';
import 'package:learnium/widgets/custom_button.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  _WithdrawScreenState createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Earnings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
                color: primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            EarningsCard(
              width: size.width * 0.95,
              amount: 'Rs.20000',
              title: 'Total Earnings',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                EarningsCard(
                  width: size.width * 0.46,
                  amount: 'Rs.8000',
                  title: 'Available',
                ),
                SizedBox(
                  width: 10,
                ),
                EarningsCard(
                  width: size.width * 0.46,
                  amount: 'Rs.12000',
                  title: 'Withdrawn',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AspectRatio(
              aspectRatio: 1.277,
              child: Container(
                padding: EdgeInsets.all(10),
                child: LineChart(
                  LineChartData(
                    gridData: FlGridData(
                      show: true,
                      drawVerticalLine: true,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: const Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      },
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                          color: const Color(0xff37434d),
                          strokeWidth: 1,
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      rightTitles: SideTitles(showTitles: false),
                      topTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 22,
                        interval: 1,
                        getTextStyles: (context, value) => const TextStyle(
                            color: Color(0xff68737d),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
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
                        interval: 1,
                        getTextStyles: (context, value) => const TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        getTitles: (value) {
                          switch (value.toInt()) {
                            case 1:
                              return '12k';
                            case 3:
                              return '8k';
                            case 5:
                              return '20k';
                          }
                          return '';
                        },
                        reservedSize: 32,
                        margin: 10,
                      ),
                    ),
                    borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                            color: const Color(0xff37434d), width: 1)),
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          FlSpot(0, 3),
                          FlSpot(2.6, 2),
                          FlSpot(4.9, 5),
                          FlSpot(6.8, 3.1),
                          FlSpot(8, 4),
                          FlSpot(9.5, 3),
                          FlSpot(11, 4),
                        ],
                        isCurved: true,
                        colors: gradientColors,
                        barWidth: 5,
                        isStrokeCapRound: true,
                        dotData: FlDotData(
                          show: false,
                        ),
                        belowBarData: BarAreaData(
                          show: true,
                          colors: gradientColors
                              .map((color) => color.withOpacity(0.3))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            MyButton(
              size: size,
              title: 'Withdraw',
              radius: 10,
              onTap: () {},
              width: size.width * 0.9,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class EarningsCard extends StatelessWidget {
  const EarningsCard({
    Key? key,
    required this.width,
    required this.title,
    required this.amount,
  }) : super(key: key);

  final double width;
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: width,
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
