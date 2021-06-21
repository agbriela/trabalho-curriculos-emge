import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/view/Login.dart';


void main(){
  runApp(TMobile());
}

class TMobile extends StatelessWidget {
  static const PrimaryColor = const Color(0xFFC5203C);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: PrimaryColor,
        ),
        home: Login(),
    );
  }
}
