import 'package:task02/pages/login.dart';
import 'pages/index.dart';
import 'package:task02/pages/exhibitions/index.dart';
import 'package:task02/pages/plan/index.dart';

const loginPage ='/';
const indexPage = '/index';
const exhibitionsPage = 'exhibitions/index';
const planYourVisitPage = 'plan/index';

final routes = {
  loginPage: (context) => const LoginPage(),
  indexPage: (context) => const IndexPage(),
  exhibitionsPage: (context) => const ExhibitionsPage(),
  planYourVisitPage: (context) => const PlanYourVisitPage(),
};