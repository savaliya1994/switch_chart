import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Barchart extends StatefulWidget {
  const Barchart({Key? key}) : super(key: key);

  @override
  State<Barchart> createState() => _BarchartState();
}

class _BarchartState extends State<Barchart> {
  final List<ChartData> chartdata = [
    ChartData('India', 12, 34, 54, Colors.red),
    ChartData('UK', 30, 20, 40, Colors.pinkAccent),
    ChartData('Germany', 36, 23, 10, Colors.green),
    ChartData('Africa', 30, 38, 52, Colors.purple),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(

                ///barchart
                //             child: SfCartesianChart(
                //   primaryXAxis: CategoryAxis(
                //       majorGridLines: MajorGridLines(width: 0), labelsExtent: 150),
                //   series: <ChartSeries>[
                //     StackedColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (data, index) => data.x,
                //       yValueMapper: (data, index) => data.y1,
                //     ),
                //     StackedColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (data, index) => data.x,
                //       yValueMapper: (data, index) => data.y2,
                //     ),
                //     StackedColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (data, index) => data.x,
                //       yValueMapper: (data, index) => data.y3,
                //     )
                //   ],
                // )
                ///coloumn
                // child: SfCartesianChart(
                //   plotAreaBorderWidth: 0,
                //   tooltipBehavior: TooltipBehavior(enable: true),
                //   primaryXAxis: CategoryAxis(
                //     majorTickLines: const MajorTickLines(size: 0),
                //     majorGridLines: const MajorGridLines(width: 0),
                //     //  labelRotation: labelRotation!
                //   ),
                //   primaryYAxis: NumericAxis(
                //     axisLine: const AxisLine(width: 0),
                //     majorTickLines: const MajorTickLines(size: 0),
                //     majorGridLines: const MajorGridLines(width: 0),
                //     plotBands: [
                //       PlotBand(
                //         start:
                //             5, // y-point for with the horizontal line needs to be drawn.
                //         end: 5,
                //         borderColor: Colors.grey,
                //         dashArray: const <double>[4, 10],
                //         borderWidth: .7, // set the border width for the horizontal line.
                //       )
                //     ],
                //   ),
                //   series: <ChartSeries<ChartData, String>>[
                //     ColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (ChartData data, _) => data.x,
                //       yValueMapper: (ChartData data, _) => data.y1,
                //       pointColorMapper: (ChartData data, _) => data.color,
                //       name: 'country',
                //       // onPointTap: (pointInteractionDetails) {},
                //       width: 0.5,
                //     ),
                //     ColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (ChartData data, _) => data.x,
                //       yValueMapper: (ChartData data, _) => data.y2,
                //       pointColorMapper: (ChartData data, _) => data.color,
                //       name: 'country',
                //       // onPointTap: (pointInteractionDetails) {},
                //       width: 0.5,
                //     ),
                //     ColumnSeries<ChartData, String>(
                //       dataSource: chartdata,
                //       xValueMapper: (ChartData data, _) => data.x,
                //       yValueMapper: (ChartData data, _) => data.y3,
                //       pointColorMapper: (ChartData data, _) => data.color,
                //       name: 'country',
                //       // onPointTap: (pointInteractionDetails) {},
                //       width: 0.5,
                //     )
                //   ],
                // ),
                ///doughntchart
                //             child: SfCircularChart(
                //   title: ChartTitle(text: ''),
                //   legend:
                //       Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
                //   series: <DoughnutSeries<ChartData, String>>[
                //     DoughnutSeries<ChartData, String>(
                //         onPointTap: (pointInteractionDetails) {},
                //         radius: '100%',
                //         explode: true,
                //         explodeOffset: '10%',
                //         dataSource: chartdata,
                //         xValueMapper: (ChartData data, _) => data.x,
                //         yValueMapper: (ChartData data, _) => data.y1,
                //         dataLabelMapper: (ChartData data, _) => '${data.y1}%',
                //         dataLabelSettings: const DataLabelSettings(isVisible: true))
                //   ],
                //   // tooltipBehavior: _tooltip,
                // ))));
                ///piechart
                child: SfCircularChart(
      legend: Legend(isVisible: true),
      series: <CircularSeries>[
        PieSeries<ChartData, String>(
          dataSource: chartdata,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y1,
          dataLabelMapper: (ChartData data, _) =>
              (data.y1.toString() + ' ' + data.x),
          radius: '60%',
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.outside,
            // Customize the appearance of the data label
            textStyle: TextStyle(fontSize: 10),
          ),
        )
      ],
    )

                ///radialchart
                // child: SfCircularChart(
                //     legend: Legend(isVisible: true),
                //     series: <RadialBarSeries>[
                //       RadialBarSeries<ChartData, String>(
                //           dataSource: chartdata,
                //           pointRadiusMapper: (ChartData data, _) => data.x,
                //           pointColorMapper: (ChartData data, _) => data.color,
                //           xValueMapper: (datum, index) => datum.x,
                //           yValueMapper: (datum, index) => datum.y1,
                //           dataLabelMapper: (datum, index) =>
                //               (datum.y1.toString() + '' + datum.x),
                //           cornerStyle: CornerStyle.bothCurve,
                //           innerRadius: '40',
                //           radius: '60%',
                //           dataLabelSettings: DataLabelSettings(
                //             isVisible: true,
                //             labelPosition: ChartDataLabelPosition.outside,
                //           )),
                //     ]),
                )));
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2, this.y3, this.color);

  final String x;
  final int y1;
  final int y2;
  final int y3;
  final Color color;
}
