import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../composants/mon_bouton.dart';

  Map<DateTime,double> listeDatesTemperatures= {
    DateTime(2024, 5, 10): 22.0,
    DateTime(2024, 5, 11): 25.0,
    DateTime(2024, 5, 12): 25.0,
    DateTime(2024, 5, 13): 28.0,
    DateTime(2024, 5, 14): 23.0,
    DateTime(2024, 5, 15): 30.0,
    DateTime(2024, 5, 16): 28.0,
  };

class DynamicChartPageCorrige extends StatefulWidget {
  const DynamicChartPageCorrige({super.key});

  @override
  State<DynamicChartPageCorrige> createState() => _DynamicChartPageCorrigeState();
}

class _DynamicChartPageCorrigeState extends State<DynamicChartPageCorrige> {

  DateTime currentDate = DateTime.now();
  double selectedTemperature = 30.0;
  
  List<BarChartGroupData> barChartGroupDataList = listeDatesTemperatures.entries.map((entry) => BarChartGroupData(
    x: entry.key.millisecondsSinceEpoch.toInt(),
    barRods: [BarChartRodData(toY: entry.value,
     color: Colors.green,
       gradient: const LinearGradient(
        colors: [Colors.blue, Colors.green, Colors.yellow, Colors.orange, Colors.red],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        )              
      )]
    )).toList();

  void _addTemperature() {
    barChartGroupDataList.add(BarChartGroupData(
      x: currentDate.millisecondsSinceEpoch.toInt(), 
      barRods: [BarChartRodData(
        toY: selectedTemperature,
        gradient: const LinearGradient(
          colors: [Colors.blue, Colors.green, Colors.yellow, Colors.orange, Colors.red],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )              
      )])
    );
    currentDate = currentDate.add(const Duration(days: 1));
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Evolution des températures", 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                strutStyle: StrutStyle(height: 1),
              ),
              AspectRatio(
                aspectRatio: 2,
                child: BarChart(
                  BarChartData(
                    barGroups: barChartGroupDataList,  
                    titlesData: FlTitlesData(
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          interval: 80,
                          showTitles: true,
                          getTitlesWidget: (value, titleMeta) {
                            final DateTime date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
                            return Transform.rotate(angle: 150,
                            child: Text(date.toIso8601String().split("T")[0]));
                          }
                        )
                      )
                    )
                  ),
                ),
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Temperature pour la journée du : ${currentDate.toIso8601String().split("T")[0]}", style: const TextStyle(fontSize: 25),),
                  Text("$selectedTemperature °", style: const TextStyle(fontSize: 40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                    MonBouton(value: -1, onButtonPressed: (value) {setState(() {
                      selectedTemperature--;
                    });}),
                    MonBouton(value: 1, onButtonPressed: (value) {setState(() {
                      selectedTemperature++;
                    });}),
                  ]),
                  ElevatedButton(onPressed: () {
                    _addTemperature();
                  }, child: const Text("Ajouter une température", style: TextStyle(fontSize: 30),),)
                ],
              ),
            ],
          ),
        )
    );
  }
}
