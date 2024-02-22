import 'package:crowdfunding/navigations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../company/entity/company.dart';

class CompanyListingPage extends StatefulWidget {
  CompanyListingPage({super.key});

  @override
  State<CompanyListingPage> createState() => _CompanyListingPageState();
}

class _CompanyListingPageState extends State<CompanyListingPage> {
  List<Company> _getCompanies() => [
        Company('assets/images/ic_allied_market_research.png',
            'Allied Market Research', 'Research', '87.2M'),
        Company('assets/images/ic_candorworks.png', 'Candorworks', 'Outsource',
            '27.8M'),
        Company('assets/images/ic_ideadunes.png', 'Ideadunes',
            'Information technology & services', '4.4M'),
        Company(
            'assets/images/ic_passogen_technologies.png',
            'Passogen Technologies',
            'Information technology & services',
            '<5M'),
        Company('assets/images/ic_scalefusion.png', 'Scalefusion',
            'Tech Services', '2.7M'),
        Company('assets/images/ic_vervotech.png', 'Vervotech', '', '')
      ];

  @override
  Widget build(BuildContext context) {
    List<Company> _companies = _getCompanies();
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                hintText: "Search Company",
                elevation: MaterialStateProperty.resolveWith<double>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return 1;
                    }
                    return 1; // Defer to the widget's default.
                  },
                ),
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search),
              );
            }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
              return List<Widget>.generate(5, (int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF000000),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('item $index'),
                        )),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF000000),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('item $index'),
                        )),
                  );
                }
              });
            }),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 16),
                itemCount: _companies.length,
                itemBuilder: (_, int index) {
                  return GestureDetector(
                      onTap: () => CompanyListingDetailPageRouteData(_companies[index]).go(context),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Image.asset(
                                  _companies[index].logo,
                                  width: 60,
                                  height: 60,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _companies[index].companyName,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          _companies[index].industryType,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("\$",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Text(_companies[index].revenue)
                                  ],
                                )
                              ],
                            ),
                          )));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 16);
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
