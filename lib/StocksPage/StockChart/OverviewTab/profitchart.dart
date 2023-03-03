import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfitChart extends StatefulWidget {
  const ProfitChart({super.key});

  @override
  State<ProfitChart> createState() => _ProfitChartState();
}

class _ProfitChartState extends State<ProfitChart> {
  final List<ChartData> chartData = [
    ChartData(2018, 35, 10),
    ChartData(2019, 38, 20),
    ChartData(2020, 34, 12),
    ChartData(2021, 52, 33),
    ChartData(2022, 40, 30)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.9,
      // color: Colors.amber,
      child: SfCartesianChart(
          // Columns will be rendered back to back
          enableSideBySideSeriesPlacement: false,
          enableAxisAnimation: true,
          primaryXAxis: NumericAxis(isVisible: true),
          primaryYAxis: NumericAxis(isVisible: false),
          series: <ChartSeries<ChartData, int>>[
            ColumnSeries<ChartData, int>(
                color: Colors.green,
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y),
          ]),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}
