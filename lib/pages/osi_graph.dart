import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(Osi());
}

class Osi extends StatelessWidget {
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
            legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
            ),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,
            series: <LineSeries>[
              LineSeries<OpdData, String>(
                  enableTooltip: true,
                  dataSource: <OpdData>[
                    OpdData('21-10-2022', 35),
                    OpdData('20-10-2022', 28),
                    OpdData('19-10-2022', 34),
                    OpdData('18-10-2022', 32),
                    OpdData('17-10-2022', 40),
                    OpdData('16-10-2022', 26),
                    OpdData('15-10-2022', 13)
                  ],
                  xValueMapper: (OpdData opd, _) => opd.week,
                  yValueMapper: (OpdData opd, _) => opd.cases,
                  name: "OPD",
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true)),
              LineSeries<SicknessData, String>(
                  dataSource: <SicknessData>[
                    SicknessData('21-10-2022', 23),
                    SicknessData('20-10-2022', 17),
                    SicknessData('19-10-2022', 56),
                    SicknessData('18-10-2022', 12),
                    SicknessData('17-10-2022', 60),
                    SicknessData('16-10-2022', 21),
                    SicknessData('15-10-2022', 41)
                  ],
                  xValueMapper: (SicknessData sickness, _) => sickness.week,
                  yValueMapper: (SicknessData sickness, _) => sickness.cases,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  name: "INJURY"),
              LineSeries<InjuryData, String>(
                  dataSource: <InjuryData>[
                    InjuryData('21-10-2022', 33),
                    InjuryData('20-10-2022', 27),
                    InjuryData('19-10-2022', 46),
                    InjuryData('18-10-2022', 2),
                    InjuryData('17-10-2022', 30),
                    InjuryData('16-10-2022', 11),
                    InjuryData('15-10-2022', 31)
                  ],
                  xValueMapper: (InjuryData injury, _) => injury.week,
                  yValueMapper: (InjuryData injury, _) => injury.cases,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  name: "SICKNESS")
            ]));
  }
}

class SicknessData {
  SicknessData(this.week, this.cases);

  final String week;
  final double cases;
}

class OpdData {
  OpdData(this.week, this.cases);

  final String week;
  final double cases;
}

class InjuryData {
  InjuryData(this.week, this.cases);

  final String week;
  final double cases;
}
