import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineGraphWidget extends StatelessWidget {
  final List<charts.Series<dynamic,int>> seriesList;
  final bool? animate;
  const LineGraphWidget(this.seriesList, {this.animate, super.key});

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.LineRendererConfig(
        includePoints: true,
      ),
    );
  }
}
