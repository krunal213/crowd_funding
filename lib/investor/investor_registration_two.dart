import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvestorRegistrationTwoPage extends StatefulWidget {
  const InvestorRegistrationTwoPage({Key? key}) : super(key: key);

  final String title = "Registration-Investor";

  @override
  State<InvestorRegistrationTwoPage> createState() =>
      _InvestorRegistrationTwoPageState();
}

class _InvestorRegistrationTwoPageState extends State<InvestorRegistrationTwoPage> {
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
                    labelText: 'Email Id',
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
                    context.push("/investor_registration_three_page"), child: Text("Validate"))),
          )
        ]));
  }
}
