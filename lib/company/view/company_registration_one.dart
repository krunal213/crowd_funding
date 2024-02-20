import 'package:crowdfunding/company/bloc/company_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'company_registration_one_response.dart';

class CompanyRegistrationOnePage extends StatefulWidget {
  const CompanyRegistrationOnePage({super.key});

  final String title = "Registration-Company";

  @override
  State<CompanyRegistrationOnePage> createState() =>
      _CompanyRegistrationOnePageState();
}

class _CompanyRegistrationOnePageState
    extends State<CompanyRegistrationOnePage> {
  late CompanyBloc _companyBloc;

  @override
  void initState() {
    _companyBloc = GetIt.I.get<CompanyBloc>();
  }

  @override
  Widget build(BuildContext context) {
    print(_companyBloc);
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
                    labelText: 'CIN/LLPIN/FLLPIN/FCRN',
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
                    onPressed: () => context.push("/company_registration_two_page"),
                    child: Text("Validate"))),
          )
        ]));
  }
}
