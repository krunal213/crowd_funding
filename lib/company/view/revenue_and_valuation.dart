import 'package:flutter/material.dart';

class RevenueAndValuationPage extends StatefulWidget {
  const RevenueAndValuationPage({Key? key}) : super(key: key);

  @override
  State<RevenueAndValuationPage> createState() =>
      _RevenueAndValuationPageState();
}

class _RevenueAndValuationPageState extends State<RevenueAndValuationPage> {
  List<String> _getRevenueAndValuations() => [
        'Allied Market Research\'s estimated annual revenue is currently \$87.2M per year.',
        'Allied Market Research\'s estimated revenue per employee is \$127,500'
      ];

  @override
  Widget build(BuildContext context) {
    List<String> revenueAndValuations = _getRevenueAndValuations();
    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: revenueAndValuations.length,
        itemBuilder: (_, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              SizedBox(
                width: 8
              ),
              Expanded(
                child: Container(
                  child: Text(
                    revenueAndValuations[index],
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.55,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 16);
        },
      ),
    );
  }
}
