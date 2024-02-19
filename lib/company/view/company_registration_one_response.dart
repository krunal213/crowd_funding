import 'package:flutter/material.dart';

import 'company_registration_two.dart';

class CompanyRegistrationOneResponsePage extends StatefulWidget {
  const CompanyRegistrationOneResponsePage({super.key});

  final String title = "Registration-Company";

  @override
  State<CompanyRegistrationOneResponsePage> createState() =>
      _CompanyRegistrationOneResponsePageState();
}

class _CompanyRegistrationOneResponsePageState
    extends State<CompanyRegistrationOneResponsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: 20,
                children: [
                  TextField(
                      controller: TextEditingController()
                        ..text = 'BENNETT COLEMAN AND COMPANY LIMITED',
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Business Name',
                      )),
                  TextField(
                      controller: TextEditingController()..text = 'ROC Mumbai',
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ROC Code',
                      )),
                  TextField(
                      controller: TextEditingController()
                        ..text = 'U22120MH1913PLC000391',
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Registration Number',
                      )),
                  TextField(
                      controller: TextEditingController()
                        ..text = 'corporate.secretarial@timesgroup.com',
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      )),
                  TextField(
                      controller: TextEditingController()
                        ..text =
                            'TIMES OF INDIA BLDGD N ROAD, NA, MUMBAI, Maharashtra, India, 400001',
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Address',
                      ))
                ],
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      const CompanyRegistrationTwoPage(),
                    ),
                  );
                }, child: Text("Verify"))),
          )
        ]));
  }
}
