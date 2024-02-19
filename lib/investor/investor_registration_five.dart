import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../dashboard.dart';

class InvestorRegistrationFivePage extends StatefulWidget {
  const InvestorRegistrationFivePage({Key? key}) : super(key: key);

  final String title = "Registration-Investor";

  @override
  State<InvestorRegistrationFivePage> createState() =>
      _InvestorRegistrationFivePageState();
}

class _InvestorRegistrationFivePageState
    extends State<InvestorRegistrationFivePage> {
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
                    labelText: 'Aadhaar Number',
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
                    onPressed: () => context.go("/dashboard_page"),
                    child: Text("Validate"))),
          )
        ]));
  }
}
