import 'package:e_commerce_2/UI/Home/home.dart';
import 'package:e_commerce_2/shared/widgets/textFrmField/TextFormField.dart';
import 'package:flutter/material.dart';
import '../../../shared/colors/colors.dart';
import '../../../shared/widgets/accountsIcons/accountsIcons.dart';
import '../../../shared/widgets/button/button.dart';
import '../SignUp/signUp.dart';

class LogIN extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: Image.asset("image/login.png"),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: MyColor().darkBlue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log In ",
                          style: TextStyle(
                            fontSize: 40,
                            color: MyColor().white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome back .Enter your credentials to access your account",
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColor().grey,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Please enter your Username or Email address",
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColor().grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextFormField(
                          hintName: "Username or Email address ",
                          validate: () {},
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          " Please enter your password",
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColor().grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextFormField(
                          hintName: "Password",
                          suffix: Icons.remove_red_eye_outlined,
                          validate: () {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password",
                                style: TextStyle(
                                    color: MyColor().grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()),
                                    );
                                  }
                                },
                                child: DefaultButton(
                                  name: "Log In",
                                  width: 244,
                                  height: 44,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AccountsIcons(
                                "log in"
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " Don’t have an account? ",
                                    style: TextStyle(
                                      color: MyColor().white,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()),
                                        );
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: MyColor().darkOrange),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
