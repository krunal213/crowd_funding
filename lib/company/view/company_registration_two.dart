import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../result.dart';
import '../bloc/company_bloc.dart';

class CompanyRegistrationTwoPage extends StatefulWidget {
  const CompanyRegistrationTwoPage({super.key});

  final String title = "Registration-Company";

  @override
  State<CompanyRegistrationTwoPage> createState() =>
      _CompanyRegistrationTwoPageState();
}

class _CompanyRegistrationTwoPageState
    extends State<CompanyRegistrationTwoPage> {
  late CompanyBloc _companyBloc;

  @override
  void initState() {
    _companyBloc = GetIt.I.get<CompanyBloc>();
  }

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
                  StreamBuilder<String>(
                      stream: _companyBloc.panNumberStream,
                      builder: (context, snapshot) {
                        return TextField(
                            onChanged: _companyBloc.onPanNumberChanged,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'PAN Number',
                                errorText: snapshot.hasError
                                    ? snapshot.error as String
                                    : null));
                      })
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
                    onPressed: () => _companyBloc.validatePANNumber(),
                    child: Text("Validate"))),
          ),
          StreamBuilder(
              stream: _companyBloc.validatePANNumberStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  switch (snapshot.data.runtimeType) {
                    case Success:
                      SchedulerBinding.instance.addPostFrameCallback((_) {
                        context.push("/company_registration_three_page");
                      });
                      break;
                  }
                }
                return Container();
              })
        ]));
  }
}
