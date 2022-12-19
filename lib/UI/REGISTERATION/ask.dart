import 'package:e_commerce_2/UI/REGISTERATION/LogIN/logIn.dart';
import 'package:e_commerce_2/UI/REGISTERATION/SignUp/signUp.dart';
import 'package:e_commerce_2/shared/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/accountsIcons/accountsIcons.dart';
import '../../shared/widgets/button/button.dart';

class Ask extends StatelessWidget {
  const Ask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Image.asset("image/shopping.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: MyColor().darkBlue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome to our app",
                    style: TextStyle(
                      color: MyColor().white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    " Shop online and get groceries delivered from stores to your"
                    " home in as fast as 1 hour ",
                    style: TextStyle(
                      color: MyColor().grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 150),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogIN()),
                          );
                        },
                        child: DefaultButton(
                          name: "Log IN",
                          width: 150,
                          height: 40,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()),
                          );
                        },
                        child: DefaultButton(
                          name: "Sign Up",
                          width: 150,
                          height: 40,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  AccountsIcons("connect"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
