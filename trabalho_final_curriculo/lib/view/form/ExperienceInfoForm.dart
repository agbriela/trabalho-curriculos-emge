import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/GraduationInfoForm.dart';

class ExperienceInfoForm extends StatelessWidget {
  TextEditingController experience1Controller = TextEditingController();
  TextEditingController date1Controller = TextEditingController();
  TextEditingController description1Controller = TextEditingController();
  TextEditingController experience2Controller = TextEditingController();
  TextEditingController date2Controller = TextEditingController();
  TextEditingController description2Controller = TextEditingController();
  TextEditingController experience3Controller = TextEditingController();
  TextEditingController date3Controller = TextEditingController();
  TextEditingController description3Controller = TextEditingController();

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
                "Experiências Profissionais",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox("Experiência", TextInputType.text, experience1Controller),
            _textBox("Período", TextInputType.number, date1Controller),
            _textBox(
                "Descrição", TextInputType.multiline, description1Controller),
            _textBox(
                "Experiência 2", TextInputType.text, experience2Controller),
            _textBox("Período", TextInputType.number, date2Controller),
            _textBox(
                "Descrição", TextInputType.multiline, description2Controller),
            _textBox(
                "Experiência 3", TextInputType.text, experience3Controller),
            _textBox("Período", TextInputType.number, date3Controller),
            _textBox(
                "Descrição", TextInputType.multiline, description3Controller),
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
                    final String experience1 = experience1Controller.text;
                    final String date1 = date1Controller.text;
                    final String description1 = description1Controller.text;
                    final String experience2 = experience2Controller.text;
                    final String date2 = date2Controller.text;
                    final String description2 = description1Controller.text;
                    final String experience3 = experience3Controller.text;
                    final String date3 = date3Controller.text;
                    final String description3 = description1Controller.text;

                    final Experience newInfo = Experience(
                        experience1: experience1,
                        date1: date1,
                        description1: description1,
                        experience2: experience2,
                        date2: date2,
                        description2: description2,
                        experience3: experience3,
                        date3: date3,
                        description3: description3);

                    saveExperience(newInfo).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                GraduationfoForm())));
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
        decoration: InputDecoration(labelText: labelText),
        style: TextStyle(fontSize: 16.0),
        keyboardType: none,
      ),
    );
  }
}
