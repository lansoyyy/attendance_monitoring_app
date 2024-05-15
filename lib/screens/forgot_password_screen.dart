import 'package:attendance/screens/home_screen.dart';
import 'package:attendance/screens/login_screen.dart';
import 'package:attendance/widgets/button_widget.dart';
import 'package:attendance/widgets/text_widget.dart';
import 'package:attendance/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/Group 31.png',
                height: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              TextWidget(
                text: 'Change Password',
                fontSize: 18,
                fontFamily: 'Bold',
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                controller: email,
                label: 'Current Password',
              ),
              TextFieldWidget(
                isObscure: true,
                showEye: true,
                controller: password,
                label: 'New Password',
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                label: 'Save',
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
