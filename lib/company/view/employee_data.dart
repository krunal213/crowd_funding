import 'package:flutter/material.dart';

class EmployeeDataPage extends StatefulWidget {
  const EmployeeDataPage({Key? key}) : super(key: key);

  @override
  State<EmployeeDataPage> createState() => _EmployeeDataPageState();
}

class _EmployeeDataPageState extends State<EmployeeDataPage> {
  List<String> _getEmployeeData() => [
        'Allied Market Research has 684 Employees.',
        'Allied Market Research grew their employee count by 13% last year.'
      ];

  @override
  Widget build(BuildContext context) {
    List<String> employeeData = _getEmployeeData();
    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: employeeData.length,
        itemBuilder: (_, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Container(
                  child: Text(
                    employeeData[index],
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
