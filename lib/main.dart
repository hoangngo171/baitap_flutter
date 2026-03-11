import 'package:flutter/material.dart';
import 'package:baitap_flutter/homepage.dart';
//import 'package:baitap_flutter/exam/bai1/my_place.dart';
//import 'package:baitap_flutter/exam/bai2/my_classroom.dart';
//import 'package:baitap_flutter/exam/bai3/my_product.dart';
//import 'package:baitap_flutter/exam/bai4/my_list_place.dart';
//import 'package:baitap_flutter/exam/bai5/form_login.dart';
//import 'package:baitap_flutter/exam/bai6/form_register.dart';
//import 'package:baitap_flutter/exam/bai7/form_feedback.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyPlace(),
      //home: MyClassroom(),
      //home: MyProduct(),
      //home: MyListPlace(), 
      //home: FormLogin(), 
      //home: FormRegister(),
      //home: FormFeedback(),
      home: HomePage(),
    );
  }
}


