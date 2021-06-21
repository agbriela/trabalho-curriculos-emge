import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/QualitiesInfoForm.dart';

class LanguageInfoForm extends StatelessWidget {
  TextEditingController language1Controller = TextEditingController();
  TextEditingController level1Controller = TextEditingController();
  TextEditingController language2Controller = TextEditingController();
  TextEditingController level2Controller = TextEditingController();
  TextEditingController language3Controller = TextEditingController();
  TextEditingController level3Controller = TextEditingController();
  TextEditingController language4Controller = TextEditingController();
  TextEditingController level4Controller = TextEditingController();

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
                "Linguagens",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox("Idioma 1", TextInputType.text, language1Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                level1Controller, "0 a 100"),
            _textBox("Idioma 2", TextInputType.text, language2Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                level2Controller, "0 a 100"),
            _textBox("Idioma 3", TextInputType.text, language3Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                level3Controller, "0 a 100"),
            _textBox("Idioma 4", TextInputType.text, language4Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                level4Controller, "0 a 100"),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: PrimaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: Text('Próximo'),
                  onPressed: () {
                    final String language1 = language1Controller.text;
                    final String level1 = level1Controller.text;
                    final String language2 = language2Controller.text;
                    final String level2 = level2Controller.text;
                    final String language3 = language3Controller.text;
                    final String level3 = level3Controller.text;
                    final String language4 = language4Controller.text;
                    final String level4 = level4Controller.text;

                    final Language newInfo = Language(
                        language1: language1,
                        level1: level1,
                        language2: language2,
                        level2: level2,
                        language3: language3,
                        level3: level3,
                        language4: language4,
                        level4: level4);

                    saveLanguage(newInfo).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                QualitiesInfoForm())));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textBox(String labelText, TextInputType none,
      TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: labelText, hintText: hintText),
        style: TextStyle(fontSize: 16.0),
        keyboardType: none,
      ),
    );
  }
}
