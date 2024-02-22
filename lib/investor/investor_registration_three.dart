import 'package:crowdfunding/investor/investor_registration_four.dart';
import 'package:crowdfunding/navigations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvestorRegistrationThreePage extends StatefulWidget {
  const InvestorRegistrationThreePage({Key? key}) : super(key: key);

  final String title = "Registration-Investor";

  @override
  State<InvestorRegistrationThreePage> createState() =>
      _InvestorRegistrationThreePageState();
}

class _InvestorRegistrationThreePageState extends State<InvestorRegistrationThreePage> {
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
                    labelText: 'Phone Number',
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
                child: FilledButton(onPressed: () =>
                    InvestorRegistrationFourPageRoute().push(context), child: Text("Validate"))),
          )
        ]));
  }
}
