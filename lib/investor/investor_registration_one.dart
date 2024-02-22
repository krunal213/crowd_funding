import 'package:crowdfunding/navigations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvestorRegistrationOnePage extends StatefulWidget {
  const InvestorRegistrationOnePage({Key? key}) : super(key: key);

  final String title = "Registration-Investor";

  @override
  State<InvestorRegistrationOnePage> createState() =>
      _InvestorRegistrationOnePageState();
}

class _InvestorRegistrationOnePageState
    extends State<InvestorRegistrationOnePage> {
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
                    labelText: 'First Name',
                  )),
                  TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
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
                    onPressed: () =>
                        InvestorRegistrationTwoPageRoute().push(context),
                    child: Text("Submit"))),
          )
        ]));
  }
}
