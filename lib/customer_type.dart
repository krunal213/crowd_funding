import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'company/view/company_registration_one.dart';
import 'investor/investor_registration_one.dart';

class CustomerType extends StatefulWidget {
  const CustomerType({Key? key}) : super(key: key);

  @override
  State<CustomerType> createState() => _CustomerTypeState();
}

class _CustomerTypeState extends State<CustomerType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image(
          image: AssetImage('assets/images/ic_background_two.jpg'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Wrap(
            runSpacing: 20,
            children: [
              Center(
                  child: Text("Registration as",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold))),
              SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                      onPressed: () =>
                          context.go('/customer_type/company_registration_one_page'),
                      child: Text("Company"))),
              SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                      onPressed: () =>
                          context.go('/customer_type/investor_registration_one_page'),
                      child: Text("Investor")))
            ],
          ),
        ),
      )
    ]));
  }
}
