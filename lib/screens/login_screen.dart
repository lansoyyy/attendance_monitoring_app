import 'package:attendance/screens/forgot_password_screen.dart';
import 'package:attendance/screens/home_screen.dart';
import 'package:attendance/screens/splash_screen.dart';
import 'package:attendance/widgets/button_widget.dart';
import 'package:attendance/widgets/text_widget.dart';
import 'package:attendance/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/Group 31.png',
                  height: 50,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/bg svg.png',
                  height: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextWidget(
                  text: 'LOGIN TO YOUR ACCOUNT',
                  fontSize: 18,
                  fontFamily: 'Bold',
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: email,
                  label: 'Your Institute Email ID',
                ),
                TextFieldWidget(
                  isObscure: true,
                  showEye: true,
                  controller: password,
                  label: 'Password',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const ForgotPasswordScreen()));
                      },
                      child: TextWidget(
                        text: 'Forgot Password?',
                        fontFamily: 'Bold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  label: 'LOGIN',
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const SplashScreen()));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
