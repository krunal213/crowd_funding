import 'package:crowdfunding/dependencies.dart';
import 'package:crowdfunding/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navigations.dart';

void main() {
  initObjects();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(routes: $appRoutes);

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

/*final GoRouter _router = GoRouter(
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
        }),
    GoRoute(
      path: '/company_registration_one_page',
      builder: (BuildContext context, GoRouterState state) {
        return const CompanyRegistrationOnePage();
      },
    ),
    GoRoute(
      path: '/company_registration_two_page',
      builder: (BuildContext context, GoRouterState state) {
        return const CompanyRegistrationTwoPage();
      },
    ),
    GoRoute(
      path: '/company_registration_three_page',
      builder: (BuildContext context, GoRouterState state) {
        return const CompanyRegistrationThreePage();
      },
    ),
    GoRoute(
      path: '/investor_registration_one_page',
      builder: (BuildContext context, GoRouterState state) {
        return const InvestorRegistrationOnePage();
      },
    ),
    GoRoute(
      path: '/investor_registration_two_page',
      builder: (BuildContext context, GoRouterState state) {
        return const InvestorRegistrationTwoPage();
      },
    ),
    GoRoute(
      path: '/investor_registration_three_page',
      builder: (BuildContext context, GoRouterState state) {
        return const InvestorRegistrationThreePage();
      },
    ),
    GoRoute(
      path: '/investor_registration_four_page',
      builder: (BuildContext context, GoRouterState state) {
        return const InvestorRegistrationFourPage();
      },
    ),
    GoRoute(
        path: '/investor_registration_five_page',
        builder: (BuildContext context, GoRouterState state) {
          return const InvestorRegistrationFivePage();
        }),
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
);*/



