import 'package:e_commerce_2/shared/colors/colors.dart';
import 'package:flutter/material.dart';

Widget DefaultTextFormField({
  required String hintName,
  IconData? suffix,
  IconData? prefix,
  bool isPassword = false,
  Function? showPassword,
  Function? validate,
}) => TextFormField(
      style: TextStyle(color: MyColor().white),
      controller: TextEditingController(),
      obscureText: isPassword,
      validator: (value) {
        if (value!.isEmpty) {
          validate;
          return '$hintName is required';
        }
      },
      decoration: InputDecoration(
        suffixIcon: Icon(suffix, color: MyColor().white),
        prefixIcon: Icon(prefix),
        hintText: hintName,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: MyColor().white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        hintStyle: TextStyle(
          color: MyColor().darkBlue,
        ),
      ),
    );
