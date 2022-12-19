import 'package:e_commerce_2/UI/Home/home.dart';
import 'package:e_commerce_2/UI/REGISTERATION/LogIN/logIn.dart';
import 'package:e_commerce_2/UI/REGISTERATION/ask.dart';
import 'package:e_commerce_2/shared/colors/colors.dart';
import 'package:e_commerce_2/shared/widgets/textFrmField/TextFormField.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/accountsIcons/accountsIcons.dart';
import '../../../shared/widgets/button/button.dart';

class SignUp extends StatelessWidget {
  GlobalKey <FormState> formKey=GlobalKey();
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
                        IconButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Ask()),
                          );
                        }, icon: Icon(Icons.arrow_back,color: MyColor().white,)),
                        Text("Sign UP ",style: TextStyle(
                          fontSize: 40,
                          color: MyColor().white,
                        ),),
                        SizedBox(height: 10,),
                        Text("Hello , Please fill i this form to create an account",style: TextStyle(color: MyColor().grey),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("First Name",style: TextStyle(color: MyColor().grey),),
                               SizedBox(height: 10,),
                                SizedBox(width: 150,
                                  height: 70,
                                  child: DefaultTextFormField(hintName: "First Name"),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Last Name",style: TextStyle(color: MyColor().grey),),
                                SizedBox(height: 10,),
                               SizedBox(width: 150,
                                height: 70,
                                child: DefaultTextFormField(hintName: "Last Name"),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text('Email address',style: TextStyle(color: MyColor().grey),),
                        SizedBox(height: 10,),
                        DefaultTextFormField(hintName: "Email address"),
                         SizedBox(height: 20,),
                        Text('Create password',style: TextStyle(color: MyColor().grey),),
                        SizedBox(height: 10,),
                        DefaultTextFormField(hintName: "Email address",suffix: Icons.remove_red_eye_outlined),
                         SizedBox(height: 20,),
                        Text('Confirm password',style: TextStyle(color: MyColor().grey),),
                        SizedBox(height: 10,),
                        DefaultTextFormField(hintName: "Email address",suffix: Icons.remove_red_eye_outlined),
                      SizedBox(height: 20,),
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
                                  name: "Sign Up",
                                  fontSize: 25,
                                  height: 44,
                                  width: 244,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AccountsIcons("sign up"),
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
                                              builder: (context) => LogIN()),
                                        );
                                      },
                                      child: Text(
                                        "Log In ",
                                        style: TextStyle(
                                            color: MyColor().darkOrange),
                                      ),),
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
