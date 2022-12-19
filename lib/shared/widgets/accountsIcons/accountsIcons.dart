import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class AccountsIcons extends StatelessWidget {
  String? connect ;
  AccountsIcons(this.connect);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              height: 9,
              indent: 30,
              endIndent: 30,
              color: MyColor().white,
            ),
            Text("Or ${connect} with",
                style: TextStyle(
                    color: MyColor().white, fontSize: 16)),
            Divider(
              height: 9,
              indent: 30,
              endIndent: 30,
              color: MyColor().white,
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.facebook,
                  color: MyColor().white,
                  size: 40,
                )),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  //   color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("image/twitter.png"),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcQjzC2JyZDZ_RaWf0qp11K0lcvB6b6kYNMoqtZAQ9hiPZ4cTIOB&psig=AOvVaw0YXHSez11SV89Q3Zu6--Zq&ust=1671212033555000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCLDfxY6U_PsCFQAAAAAdAAAAABAD"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
