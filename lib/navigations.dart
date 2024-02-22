import 'package:crowdfunding/company/entity/company.dart';
import 'package:crowdfunding/dashboard/dashboard.dart';
import 'package:crowdfunding/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'company/view/company_registration_one.dart';
import 'company/view/company_registration_three.dart';
import 'company/view/company_registration_two.dart';
import 'customer_type.dart';
import 'dashboard/company_listing.dart';
import 'dashboard/company_listing_detail.dart';
import 'dashboard/home.dart';
import 'investor/investor_registration_five.dart';
import 'investor/investor_registration_four.dart';
import 'investor/investor_registration_one.dart';
import 'investor/investor_registration_three.dart';
import 'investor/investor_registration_two.dart';

part 'navigations.g.dart';
//https://pub.dev/packages/go_router
//https://github.com/flutter/packages/blob/main/packages/go_router_builder/example/lib/simple_example.dart
//https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html

@TypedGoRoute<SplashPageRoute>(path: '/')
@immutable
class SplashPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}

@TypedGoRoute<CustomerTypePageRoute>(path: '/customer_type')
@immutable
class CustomerTypePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CustomerType();
  }
}

@TypedGoRoute<CompanyRegistrationOnePageRoute>(
    path: '/company_registration_one_page')
@immutable
class CompanyRegistrationOnePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CompanyRegistrationOnePage();
  }
}

@TypedGoRoute<CompanyRegistrationTwoPageRoute>(
    path: '/company_registration_two_page')
@immutable
class CompanyRegistrationTwoPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CompanyRegistrationTwoPage();
  }
}

@TypedGoRoute<CompanyRegistrationThreePageRoute>(
    path: '/company_registration_three_page')
@immutable
class CompanyRegistrationThreePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CompanyRegistrationThreePage();
  }
}

@TypedGoRoute<InvestorRegistrationOnePageRoute>(
    path: '/investor_registration_one_page')
@immutable
class InvestorRegistrationOnePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InvestorRegistrationOnePage();
  }
}

@TypedGoRoute<InvestorRegistrationTwoPageRoute>(
    path: '/investor_registration_two_page')
@immutable
class InvestorRegistrationTwoPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InvestorRegistrationTwoPage();
  }
}

@TypedGoRoute<InvestorRegistrationThreePageRoute>(
    path: '/investor_registration_three_page')
@immutable
class InvestorRegistrationThreePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InvestorRegistrationThreePage();
  }
}

@TypedGoRoute<InvestorRegistrationFourPageRoute>(
    path: '/investor_registration_four_page')
@immutable
class InvestorRegistrationFourPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InvestorRegistrationFourPage();
  }
}

@TypedGoRoute<InvestorRegistrationFivePageRoute>(
    path: '/investor_registration_five_page')
@immutable
class InvestorRegistrationFivePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InvestorRegistrationFivePage();
  }
}

@TypedStatefulShellRoute<DashboardPageRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<BranchAData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<HomePageRouteData>(path: '/home_page'),
      ],
    ),
    TypedStatefulShellBranch<BranchBData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<CompanyListingPageRouteData>(
            path: '/company_listing_page', routes: [
          TypedGoRoute<CompanyListingDetailPageRouteData>(
            path: 'company_listing_detail_page',
          )
        ]),
      ],
    ),
  ],
)
class DashboardPageRouteData extends StatefulShellRouteData {
  const DashboardPageRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return DashboardPage(
      navigationShell: navigationShell,
    );
  }
}

class BranchAData extends StatefulShellBranchData {
  const BranchAData();
}

class BranchBData extends StatefulShellBranchData {
  const BranchBData();
}

class HomePageRouteData extends GoRouteData {
  const HomePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class CompanyListingPageRouteData extends GoRouteData {
  const CompanyListingPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CompanyListingPage();
  }
}

class CompanyListingDetailPageRouteData extends GoRouteData {
  const CompanyListingDetailPageRouteData(this.$extra);

  final Company $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CompanyListingDetailPage($extra);
  }
}
