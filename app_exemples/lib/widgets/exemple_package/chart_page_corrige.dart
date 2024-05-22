import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPageCorrige extends StatelessWidget {
  const ChartPageCorrige({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                const Text("Evolution des températures", 
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  strutStyle: StrutStyle(height: 1),
                ),
                AspectRatio(
                  aspectRatio: 2,
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [LineChartBarData(
                        spots: [
                          const FlSpot(10,22),
                          const FlSpot(11,25),
                          const FlSpot(12,25),
                          const FlSpot(13,28),
                          const FlSpot(14,23),
                          const FlSpot(15,30),
                          const FlSpot(16,28),
                        ],
                        color: Colors.red,
                        gradient: const LinearGradient(colors: [Colors.red, Colors.orange, Colors.yellow])
                      )]
                    ),
                  ),
                )
                                
              ],
            ),
          ),
        )
    );
  }
}
