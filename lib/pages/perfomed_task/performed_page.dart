import 'dart:ffi';

import 'package:fit/pages/activityTracker/activityTracker_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:async';
import 'dart:math' as math;

class PerformedTask extends StatefulWidget {
  const PerformedTask({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PerformedTask();
}

const TWO_PI = 3.14 * 2;

class _PerformedTask extends State {
  var num;
  late bool isShowingMainData;
  late List<LiveData> chartData;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    chartData = getCharData();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    super.initState();
  }

  int time = 15;
  void updateDataSource(Timer timer) {
    chartData.remove(0);
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    _chartSeriesController.updateDataSource(
      addedDataIndex: chartData.length - 1,
      removedDataIndex: 0,
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.purple,
            value: 30,
            title: '21.9',
            radius: 50,
            titleStyle: GoogleFonts.ubuntu(
              color: Colors.white,
              fontSize: 15,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color.fromARGB(255, 249, 249, 249),
            value: 70,
            title: '',
            radius: 40,
            titleStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw 'Oh no';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    num = math.Random().nextInt(6) + 4.toDouble();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Welcome Back',
                  style: GoogleFonts.ubuntu(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.logout_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ]),
              Text(
                'Kewulere A.',
                style: GoogleFonts.ubuntu(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 81, 115, 216),
                        Color.fromARGB(255, 18, 47, 144),
                        Color.fromARGB(255, 0, 29, 125)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              'BMI (Body Mass Index)',
                              style: GoogleFonts.ubuntu(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'You Have Normal Body Weight',
                              style: GoogleFonts.ubuntu(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.purple),
                              ),
                              child: Text(
                                'View More',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 100,
                          width: 100,
                          child: PieChart(
                            PieChartData(
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 0,
                              sections: showingSections(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 207, 227, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          'Today Target',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ActivityTracker(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          child: Text(
                            'Check',
                            style: GoogleFonts.ubuntu(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Activity Status',
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 207, 227, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SfCartesianChart(
                    series: <LineSeries<LiveData, int>>[
                      LineSeries<LiveData, int>(
                        onRendererCreated: (ChartSeriesController controller) {
                          _chartSeriesController = controller;
                        },
                        dataSource: chartData,
                        color: Colors.blue,
                        xValueMapper: (LiveData rate, _) => rate.time.toInt(),
                        yValueMapper: (LiveData rate, _) => rate.heatBeat,
                      ),
                    ],
                    primaryXAxis: NumericAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      edgeLabelPlacement: EdgeLabelPlacement.shift,
                      interval: 3,
                      title: AxisTitle(text: 'Time (seconds)'),
                    ),
                    primaryYAxis: NumericAxis(
                        axisLine: const AxisLine(width: 2),
                        majorTickLines: const MajorTickLines(size: 0),
                        title: AxisTitle(
                          text: 'Heat Rate',
                        )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 207, 227, 255),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: SweepGradient(
                              colors: [
                                Color.fromARGB(255, 81, 115, 216),
                                Color.fromARGB(255, 220, 222, 234)
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  'Water Intake',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '4 litres (Daily)',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Morning: 1350ml',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 13,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Afternoon: 1350ml',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 13,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Night: 1350ml',
                                  style: GoogleFonts.ubuntu(
                                    fontSize: 13,
                                    color: Colors.purple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 0.0, end: 1.0),
                      duration: Duration(seconds: 4),
                      builder: (context, value, child) {
                        int percentage = (num * 20).ceil();
                        return Container(
                          child: Stack(
                            children: [
                              ShaderMask(
                                shaderCallback: (rect) {
                                  return SweepGradient(
                                      startAngle: 0.0,
                                      endAngle: TWO_PI,
                                      stops: [num, num],
                                      center: Alignment.center,
                                      colors: [
                                        Colors.blue,
                                        Colors.transparent
                                      ]).createShader(rect);
                                },
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Text(
                                    '$percentage Calories',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 15,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<LiveData> getCharData() {
    return <LiveData>[
      LiveData(0, 90),
      LiveData(1, 79),
      LiveData(2, 64),
      LiveData(4, 49),
      LiveData(5, 76),
      LiveData(6, 58),
      LiveData(7, 83),
      LiveData(8, 65),
      LiveData(9, 85),
      LiveData(10, 50),
      LiveData(11, 90),
    ];
  }
}

class LiveData {
  LiveData(this.time, this.heatBeat);

  final int time;
  final int heatBeat;
}
