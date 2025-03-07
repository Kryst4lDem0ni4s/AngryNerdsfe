import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts; // Import charting library


class Aggregationservice extends StatefulWidget {
  const Aggregationservice({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _AggregationserviceState createState() => _AggregationserviceState();
}

class _AggregationserviceState extends State<Aggregationservice> {
  // Sample data for user engagement metrics
  final List<charts.Series<UserEngagement, String>> _userEngagementData = [
    charts.Series<UserEngagement, String>(
      id: 'User Engagement',
      domainFn: (UserEngagement engagement, _) => engagement.category,
      measureFn: (UserEngagement engagement, _) => engagement.value,
      data: [
        UserEngagement('Active Users', 120),
        UserEngagement('Engagement Rate', 75),
      ],
    )
  ];

  // Sample data for sales reports
  final List<charts.Series<SalesData, String>> _salesData = [
    charts.Series<SalesData, String>(
      id: 'Sales',
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.amount,
      data: [
        SalesData('Jan', 1000),
        SalesData('Feb', 1500),
        SalesData('Mar', 2000),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/green_logo.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Engagement Metrics Section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'User Engagement Metrics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Row(
                    children: [
                      Icon(Icons.info_outline),
                      Expanded(
                        child: Text(
                          'CREATE TRANSPORT GROUPS AND MANAGE PAYMENTS WITH UPI GATEWAYS',
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Sort by Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: charts.BarChart(
                      _userEngagementData,
                      animate: true,
                    ),
                  ),
                ],
              ),
            ),
            // Sales Reports Section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sales Reports',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: charts.BarChart(
                      _salesData,
                      animate: true,
                    ),
                  ),
                ],
              ),
            ),
            // System Usage Statistics Section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'System Usage Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 200,
                    child: charts.TimeSeriesChart(
                      [
                        charts.Series<SystemUsage, DateTime>(
                          id: 'System Usage',
                          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
                          domainFn: (SystemUsage usage, _) => usage.time,
                          measureFn: (SystemUsage usage, _) => usage.value,
                          data: [
                            SystemUsage(DateTime.now().subtract(const Duration(days: 2)), 75),
                            SystemUsage(DateTime.now().subtract(const Duration(days: 1)), 80),
                            SystemUsage(DateTime.now(), 85),
                          ],
                        ),
                      ],
                      animate: true,
                      domainAxis: const charts.DateTimeAxisSpec(),
                    ),
                  ),
                ],
              ),
            ),

            // Additional UI elements for system usage can be added here
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                '- END OF LIST -',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.mic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Data classes for charts
class UserEngagement {
  final String category;
  final int value;

  UserEngagement(this.category, this.value);
}

class SalesData {
  final String month;
  final int amount;

  SalesData(this.month, this.amount);
}

class SystemUsage {
  final DateTime time;
  final double value;

  SystemUsage(this.time, this.value);
}
