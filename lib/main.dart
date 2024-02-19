import 'package:crowdfunding/company/bloc/company_bloc.dart';
import 'package:crowdfunding/company/entity/company.dart';
import 'package:crowdfunding/company/repository/company_repository.dart';
import 'package:crowdfunding/company/repository/datasource/network/company_network_datasource.dart';
import 'package:crowdfunding/company/repository/datasource/network/company_rest_client.dart';
import 'package:crowdfunding/company/repository/datasource/sharedpref/company_disc_datasource.dart';
import 'package:crowdfunding/company/view/company_listing.dart';
import 'package:crowdfunding/company/view/company_listing_detail.dart';
import 'package:crowdfunding/company/view/company_registration_two.dart';
import 'package:crowdfunding/investor/investor_registration_five.dart';
import 'package:crowdfunding/splash.dart';
import 'package:crowdfunding/state_shell_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'company/view/company_registration_one.dart';
import 'company/view/company_registration_three.dart';
import 'customer_type.dart';
import 'home.dart';
import 'dashboard/dashboard.dart';
import 'investor/investor_registration_four.dart';
import 'investor/investor_registration_one.dart';
import 'investor/investor_registration_three.dart';
import 'investor/investor_registration_two.dart';

void main() {
  GetIt getIt = GetIt.I;
  final dio = getIt.registerSingleton<Dio>(Dio());
  final sharedPreferences = SharedPreferences.getInstance();
  final companyRestClient =
      getIt.registerSingleton<CompanyRestClient>(CompanyRestClient(dio));
  getIt.registerFactory<CompanyBloc>(() => CompanyBloc(CompanyRepositoryImpl(
      CompanyDiscDataSourceImpl(sharedPreferences),
      CompanyNetworkDataSourceImpl(companyRestClient))));
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashPage();
        }),
    GoRoute(
        path: '/customer_type',
        builder: (BuildContext context, GoRouterState state) {
          return const CustomerType();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'company_registration_one_page',
            builder: (BuildContext context, GoRouterState state) {
              return const CompanyRegistrationOnePage();
            },
          ),
          GoRoute(
            path: 'company_registration_two_page',
            builder: (BuildContext context, GoRouterState state) {
              return const CompanyRegistrationTwoPage();
            },
          ),
          GoRoute(
            path: 'company_registration_three_page',
            builder: (BuildContext context, GoRouterState state) {
              return const CompanyRegistrationThreePage();
            },
          ),
          GoRoute(
            path: 'investor_registration_one_page',
            builder: (BuildContext context, GoRouterState state) {
              return const InvestorRegistrationOnePage();
            },
          ),
          GoRoute(
            path: 'investor_registration_two_page',
            builder: (BuildContext context, GoRouterState state) {
              return const InvestorRegistrationTwoPage();
            },
          ),
          GoRoute(
            path: 'investor_registration_three_page',
            builder: (BuildContext context, GoRouterState state) {
              return const InvestorRegistrationThreePage();
            },
          ),
          GoRoute(
            path: 'investor_registration_four_page',
            builder: (BuildContext context, GoRouterState state) {
              return const InvestorRegistrationFourPage();
            },
          ),
          GoRoute(
              path: 'investor_registration_five_page',
              builder: (BuildContext context, GoRouterState state) {
                return const InvestorRegistrationFivePage();
              })
        ]),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return DashboardPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
                path: '/home_page',
                builder: (BuildContext context, GoRouterState state) =>
                    const HomePage())
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
                path: '/company_listing_page',
                builder: (BuildContext context, GoRouterState state) =>
                    CompanyListingPage(),
                routes: [
                  GoRoute(
                      path: 'company_listing_detail_page',
                      builder: (BuildContext context, GoRouterState state) {
                        return CompanyListingDetailPage(state.extra as Company);
                      })
                ])
          ],
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'CrowdFunding',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routerConfig: _router);
  }
}
