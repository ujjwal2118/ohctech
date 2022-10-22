import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chart Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // brightness: Brightness.dark,
      ),
      home: ChartSampleGallery(),
    );
  }
}

class ChartSampleGallery extends StatefulWidget {
  @override
  _ChartSampleGalleryState createState() => _ChartSampleGalleryState();
}

class _ChartSampleGalleryState extends State<ChartSampleGallery> {
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daily Dashboards'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'OSI Weekly Chart'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,
            series: <LineSeries<OsiData, String>>[
              LineSeries<OsiData, String>(
                  dataSource: <OsiData>[
                    OsiData('21-10-2022', 35),
                    OsiData('20-10-2022', 28),
                    OsiData('19-10-2022', 34),
                    OsiData('18-10-2022', 32),
                    OsiData('17-10-2022', 40)
                  ],

                  //  dataSource: <OsiData>[
                  //   OsiData('Jan', 35),
                  //   OsiData('Feb', 28),
                  //   OsiData('Mar', 34),
                  //   OsiData('Apr', 32),
                  //   OsiData('May', 40)
                  // ],

                  xValueMapper: (OsiData osi, _) => osi.week,
                  yValueMapper: (OsiData osi, _) => osi.cases,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]));
  }
}

class OsiData {
  OsiData(this.week, this.cases);

  final String week;
  final double cases;
}
