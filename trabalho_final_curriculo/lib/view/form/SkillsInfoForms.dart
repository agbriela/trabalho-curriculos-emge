import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/LanguageInfoForm.dart';

class SkillsInfoForm extends StatelessWidget {
  TextEditingController dartController = TextEditingController();
  TextEditingController mysqlController = TextEditingController();
  TextEditingController htmlController = TextEditingController();
  TextEditingController pythonController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController photoshopController = TextEditingController();
  TextEditingController cssController = TextEditingController();

  static const PrimaryColor = const Color(0xFFC5203C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Currículo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Habilidades",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox("Dart", TextInputType.number, dartController),
            _textBox("MySQL", TextInputType.number, mysqlController),
            _textBox("HTML", TextInputType.number, htmlController),
            _textBox("Python", TextInputType.number, pythonController),
            _textBox("Pacote Office", TextInputType.number, officeController),
            _textBox("Photoshop", TextInputType.number, photoshopController),
            _textBox("CSS", TextInputType.number, cssController),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: Text('Próximo'),
                  style: ElevatedButton.styleFrom(
                    primary: PrimaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: () {
                    final String dart = dartController.text;
                    final String mysql = mysqlController.text;
                    final String html = htmlController.text;
                    final String python = pythonController.text;
                    final String office = officeController.text;
                    final String photoshop = photoshopController.text;
                    final String css = cssController.text;

                    final Skills newInfo = Skills(
                        dart: dart,
                        mySQL: mysql,
                        html: html,
                        python: python,
                        office: office,
                        photoshop: photoshop,
                        css: css);

                    saveSkills(newInfo).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                LanguageInfoForm())));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textBox(
      String labelText, TextInputType none, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText, hintText: "Informe um número entre 0 e 100"),
        style: TextStyle(fontSize: 16.0),
        keyboardType: none,
      ),
    );
  }
}
