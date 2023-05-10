import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  // Sample analytics data
  List<String> _months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
  String _selectedMonth = 'Jan';
  double _amount = 1000.0;
  List<Map<String, dynamic>> _spendingsData = [
    {'category': 'Food', 'amount': 200.0},
    {'category': 'Transport', 'amount': 100.0},
    {'category': 'Entertainment', 'amount': 300.0},
    {'category': 'Shopping', 'amount': 150.0},
    {'category': 'Other', 'amount': 50.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Analytics',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: _months.map((month) {
                return Container(
                  child: Center(
                    child: Text(
                      month,
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 50.0,
                viewportFraction: 0.3,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _selectedMonth = _months[index];
                  });
                },
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Amount: \$10000',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: _buildSpendingsGraph(),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build the spendings graph
  Widget _buildSpendingsGraph() {
    return SfCircularChart(
      series: <CircularSeries>[
        PieSeries<Map<String, dynamic>, String>(
          dataSource: _spendingsData,
          xValueMapper: (Map<String, dynamic> spending, _) =>
          spending['category'] as String,
          yValueMapper: (Map<String, dynamic> spending, _) =>
          spending['amount'] as double,
          dataLabelMapper: (Map<String, dynamic> spending, _) =>
          '\$${spending['amount']}',
          enableTooltip: true,
          dataLabelSettings: DataLabelSettings(isVisible: true),
        )
      ],
    );
  }
}
