import 'package:task02/pages/login.dart';
import 'package:task02/pages/exhibitions_info/home.dart';
import 'package:task02/pages/exhibitions/home.dart';
import 'package:task02/pages/plan/home.dart';

const loginPage ='/';
const exhibitionsInfoPage = '/exhibitions_info/home';
const exhibitionsPage = '/exhibitions/home';
const planYourVisitPage = '/plan/home';

final routes = {
  loginPage: (context) => const LoginPage(),
  exhibitionsInfoPage: (context) => const ExhibitionsInfoPage(),
  exhibitionsPage: (context) => const ExhibitionsPage(),
  planYourVisitPage: (context) => const PlanYourVisitPage(),
};