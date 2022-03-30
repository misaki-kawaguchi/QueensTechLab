import 'package:flutter/material.dart';
import 'package:task02/widgets/login_form_field.dart';
import 'package:task02/routes.dart';
import 'package:task02/widgets/common_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    Navigator.of(context).pushNamed(exhibitionsInfoPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5000B7),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer(flex: 2),
              const Text(
                'your\nportfolio',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    LoginFormField(
                      controller: _emailController,
                      hintText: 'Email address',
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'メールアドレスを入力してください。';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginFormField(
                      controller: _passwordController,
                      hintText: 'Password',
                      validator: (String? value) {
                        if (value == null || value.length < 5) {
                          return '5文字以上のパスワードを入力してください。';
                        }
                        return null;
                      },
                    ),
                    TextButton(
                      onPressed: () => print('パスワード設定画面に飛ぶ'),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Forgot your password?',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CommonButton(text: 'ログイン', onPressed: _login),
                  ],
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
