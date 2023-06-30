import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class PieChartWidget extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool? animate;
  const PieChartWidget(this.seriesList, {this.animate, super.key});

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.ArcRendererConfig(
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.auto,
          )
        ],
      ),
    );
  }
}
