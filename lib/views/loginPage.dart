import 'package:auth_ui/Widgets/bottom.dart';
import 'package:auth_ui/Widgets/costum_text_field.dart';
import 'package:auth_ui/views/RegisterPage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),

              Text(
                'Welcome Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Text(
                "Enter Your Credential To Login",
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              CostumTextField(prefixIcon: Icons.person, hintText: 'User Name'),

              CostumTextField(prefixIcon: Icons.password, hintText: 'Password'),

              Bottom(text: "Login"),
              Spacer(),

              Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: Color(0xff9C28B2),
                  fontWeight: FontWeight.w800,
                ),
              ),
              Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have An Account ? "),

                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage())),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xff9C28B2),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
