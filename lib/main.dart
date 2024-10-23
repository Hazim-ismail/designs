import 'package:flutter/material.dart';
import 'package:platformd/pages/colors.dart';
import 'package:platformd/sign/login/sign.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignIn(),
    title: 'Platform',
    theme: ThemeData(
      brightness: Brightness.light,
      primarySwatch: red,
    ),
  )
);