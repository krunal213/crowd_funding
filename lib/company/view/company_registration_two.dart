import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'company_registration_three.dart';

class CompanyRegistrationTwoPage extends StatefulWidget {
  const CompanyRegistrationTwoPage({super.key});

  final String title = "Registration-Company";

  @override
  State<CompanyRegistrationTwoPage> createState() =>
      _CompanyRegistrationTwoPageState();
}

class _CompanyRegistrationTwoPageState
    extends State<CompanyRegistrationTwoPage> {
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
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PAN Number',
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
                child: FilledButton(
                    onPressed: () => context.go("/customer_type/company_registration_three_page"),
                    child: Text("Validate"))),
          )
        ]));
  }
}
