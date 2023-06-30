import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class GraphProvider extends ChangeNotifier {
  List<charts.Series<DataPoint, int>> createSampleData() {
    final autoData = [
      DataPoint(0, 5),
      DataPoint(1, 25),
      DataPoint(2, 100),
      DataPoint(3, 75),
      DataPoint(4, 40),
    ];

    final carData = [
      DataPoint(0, 10),
      DataPoint(1, 50),
      DataPoint(2, 80),
      DataPoint(3, 30),
      DataPoint(4, 60),
    ];

    final suvData = [
      DataPoint(0, 2),
      DataPoint(1, 30),
      DataPoint(2, 42),
      DataPoint(3, 16),
      DataPoint(4, 7),
    ];

    return [
      charts.Series<DataPoint, int>(
        id: 'Auto Data',
        domainFn: (DataPoint point, _) => point.x,
        measureFn: (DataPoint point, _) => point.y,
        data: autoData,
      ),
      charts.Series<DataPoint, int>(
        id: 'Car Data',
        domainFn: (DataPoint point, _) => point.x,
        measureFn: (DataPoint point, _) => point.y,
        data: carData,
      ),
      charts.Series<DataPoint, int>(
        id: 'SUV Data',
        domainFn: (DataPoint point, _) => point.x,
        measureFn: (DataPoint point, _) => point.y,
        data: suvData,
      ),
    ];
  }
}

class DataPoint {
  final int x;
  final int y;

  DataPoint(this.x, this.y);
}
