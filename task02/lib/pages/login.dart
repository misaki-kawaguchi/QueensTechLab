import 'package:flutter/material.dart';
import 'package:task02/widgets/login_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    print('ログインできました！');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF5000B7),
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
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _login,
                        child: const Text('ログイン'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFF473A),
                          fixedSize: const Size.fromHeight(50),
                        ),
                      ),
                    ),
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
