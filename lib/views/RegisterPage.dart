import 'package:auth_ui/Widgets/bottom.dart';
import 'package:auth_ui/Widgets/costum_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Gap(30),
              Text("Create An Account", style: TextStyle(fontSize: 16)),
              Gap(20),
              CostumTextField(hintText: 'Username', prefixIcon: Icons.person),
              CostumTextField(hintText: 'Email', prefixIcon: Icons.email),
              CostumTextField(hintText: 'Password', prefixIcon: Icons.password),
              CostumTextField(
                hintText: "Confirm Password",
                prefixIcon: Icons.password,
              ),
              Bottom(text: 'Sign Up', color: Color(0xff9C28B2)),
              Gap(10),
              Text(
                'Or',
                style: TextStyle(color: Color(0xff877986), fontSize: 18),
              ),
              Gap(10),

              Bottom(
                text: "Sign In With Google",
                textColor: Color(0xff9C28B2),
                border: Border.all(color: Color(0xff9C28B2), width: 2),
              ),
              Gap(40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have An Account ? "),

                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff9C28B2),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
