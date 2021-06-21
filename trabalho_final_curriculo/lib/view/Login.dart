import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class Login extends StatefulWidget {
  Login({enter, key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController accountNumberControler = TextEditingController();

  static const PrimaryColor = const Color(0xFFC5203C);

  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(77, 88, 89, 100),
          body: _login()),
    );
  }

  Widget _login() {
    return Center(
      child: Container(
        child: SafeArea(
          child: ListView(
            restorationId: 'list_view',
            padding: const EdgeInsets.all(16),
            children: [
              _title(),
              _email(),
              _password(),
              _button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(){
   return Padding(
      padding: const EdgeInsets.fromLTRB(32, 132, 32, 64),
      child: Center(
        child: Text(
          "Entre para Continuar!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  Widget _email() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          _textFieldName("email:"),
          CupertinoTextField(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: PrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            restorationId: 'email_address_text_field',
            keyboardType: TextInputType.emailAddress,
            clearButtonMode: OverlayVisibilityMode.editing,
            autocorrect: false,
          ),
        ],
      ),
    );
  }

  Widget _password() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          _textFieldName("senha:"),
          CupertinoTextField(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: PrimaryColor),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            restorationId: 'password_text_field',
            keyboardType: TextInputType.visiblePassword,
            clearButtonMode: OverlayVisibilityMode.editing,
            obscureText: true,
            autocorrect: false,
          ),
        ],
      ),
    );
  }

  Widget _textFieldName(String name) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
      child: ElevatedButton(
        child: Text(
          "Entrar",
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          primary: PrimaryColor,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.white),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => HomePage()),
          );
        },
      ),
    );
  }
}
