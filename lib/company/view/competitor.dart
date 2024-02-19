import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:flutter/material.dart';

class Competitor {
  final String competitorName;
  final String revenue;
  final String numberOfEmployees;
  final String employeeGrowth;
  final String totalFunding;
  final String valuation;

  Competitor(this.competitorName, this.revenue, this.numberOfEmployees,
      this.employeeGrowth, this.totalFunding, this.valuation);
}

class CompetitorPage extends StatefulWidget {
  const CompetitorPage({Key? key}) : super(key: key);

  @override
  State<CompetitorPage> createState() => _CompetitorPageState();
}

class _CompetitorPageState extends State<CompetitorPage> {
  List<String> _listOfHeaders() => [
        'Competitor Name',
        'Revenue',
        'Number of Employees',
        'Employee Growth',
        'Total Funding',
        'Valuation'
      ];

  List<Competitor> _listOfCompetitor() {
    return [
      Competitor('Ventana Research Revenue and Competitors', '\$3.5M', '43',
          '-14%', 'N/A', '	N/A'),
      Competitor('Oregon Research Institute Revenue and Competitors', '\$14.1M',
          '138', '6%', 'N/A', '	N/A'),
      Competitor('Education Northwest Revenue and Competitors', '\$13.8M',
          '135', '2%', 'N/A', 'N/A'),
      Competitor('VuPoint Research Revenue and Competitors', '\$5.4M', '59',
          '0%', 'N/A', 'N/A'),
      Competitor(
          'International Institute for Analytics Revenue and Competitors',
          '\$6.2M',
          '68',
          '-7%',
          'N/A',
          'N/A'),
      Competitor('World Coffee Research Revenue and Competitors', '\$3.8M',
          '46', '15%', 'N/A', 'N/A'),
      Competitor('NPC Research Revenue and Competitors', '\$2.1M', '29', '16%',
          'N/A', 'N/A'),
      Competitor('Linus Pauling Institute Revenue and Competitors', '\$1.9M',
          '26', '4%', 'N/A', 'N/A'),
      Competitor('Allied Market Research Revenue and Competitors', '\$87.2M',
          '684', '13%', 'N/A', 'N/A'),
      Competitor('MDC Research Revenue and Competitors', '\$5M', '49', '-4%',
          'N/A', 'N/A')
    ];
  }

  @override
  Widget build(BuildContext context) {
    final _verticalScrollController = ScrollController();
    final _horizontalScrollController = ScrollController();
    return Scaffold(
        body: SingleChildScrollView(
      child: AdaptiveScrollbar(
        underColor: Colors.transparent,
        sliderDefaultColor: Colors.transparent,
        sliderActiveColor: Colors.transparent,
        controller: _verticalScrollController,
        child: AdaptiveScrollbar(
          controller: _horizontalScrollController,
          position: ScrollbarPosition.bottom,
          underColor: Colors.transparent,
          sliderDefaultColor: Colors.transparent,
          sliderActiveColor: Colors.transparent,
          child: SingleChildScrollView(
            controller: _verticalScrollController,
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
                controller: _horizontalScrollController,
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    dividerThickness: 0.01,
                    columns: _listOfHeaders()
                        .map((headerTitle) => DataColumn(
                              label: Text(headerTitle),
                            ))
                        .toList(),
                    rows: _listOfCompetitor()
                        .map((competitor) => DataRow(
                              cells: <DataCell>[
                                DataCell(SizedBox(
                                    width: 120.0,
                                    child: Center(
                                      child: Text(competitor.competitorName,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1),
                                    ))),
                                DataCell(
                                    Center(child: Text(competitor.revenue))),
                                DataCell(Center(
                                    child: Text(competitor.numberOfEmployees))),
                                DataCell(Center(
                                    child: Text(competitor.employeeGrowth))),
                                DataCell(Center(
                                    child: Text(competitor.totalFunding))),
                                DataCell(
                                    Center(child: Text(competitor.valuation)))
                              ],
                            ))
                        .toList())),
          ),
        ),
      ),
    ));
  }
}
