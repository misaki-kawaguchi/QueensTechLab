import 'package:task02/pages/login.dart';
import 'pages/index.dart';
import 'package:task02/pages/exhibitions/index.dart';

const loginPage ='/';
const indexPage = '/index';
const exhibitionsPage = 'exhibitions/index';

final routes = {
  loginPage: (context) => const LoginPage(),
  indexPage: (context) => const IndexPage(),
  exhibitionsPage: (context) => const ExhibitionsPage(),
};