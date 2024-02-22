import 'package:flutter/material.dart';
import 'package:job_timer/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;

  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF0092B9),
              Color(0XFF0167B2),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(
                height: screenSize.height * .070,
              ),
              SizedBox(
                width: screenSize.width * .8,
                height: 49,
                child: ElevatedButton(
                  onPressed: () {
                    print('teste');
                    // controller.singIn();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                  ),
                  child: Image.asset('assets/images/google.png'),
                ),
              ),
              const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
