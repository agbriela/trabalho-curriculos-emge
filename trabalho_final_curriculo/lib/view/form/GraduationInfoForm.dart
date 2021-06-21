import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/CurriculumDetail.dart';

class GraduationfoForm extends StatelessWidget {
  TextEditingController graduation1Controller = TextEditingController();
  TextEditingController dateGraduation1Controller = TextEditingController();
  TextEditingController descriptionGraduation1Controller =
      TextEditingController();
  TextEditingController graduation2Controller = TextEditingController();
  TextEditingController dateGraduation2Controller = TextEditingController();
  TextEditingController descriptionGraduation2Controller =
      TextEditingController();

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
                "Formação",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox("Formação ", TextInputType.text, graduation1Controller),
            _textBox(
                "Período", TextInputType.number, dateGraduation1Controller),
            _textBox("Descrição", TextInputType.multiline,
                descriptionGraduation1Controller),
            _textBox("Formação 2", TextInputType.emailAddress,
                graduation2Controller),
            _textBox(
                "Período", TextInputType.number, dateGraduation1Controller),
            _textBox("Descrição", TextInputType.multiline,
                descriptionGraduation2Controller),
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
                  child: Text('Finalizar'),
                  onPressed: () {
                    final String graduation1 = graduation1Controller.text;
                    final String date1 = dateGraduation1Controller.text;
                    final String description1 =
                        descriptionGraduation1Controller.text;
                    final String graduation2 = graduation2Controller.text;
                    final String date2 = dateGraduation2Controller.text;
                    final String description2 =
                        descriptionGraduation2Controller.text;

                    final Graduation newInfo = Graduation(
                        graduation1: graduation1,
                        dateGraduation1: date1,
                        descriptionGraduation1: description1,
                        graduation2: graduation2,
                        dateGraduation2: date2,
                        descriptionGraduation2: description2);

                    saveGraduation(newInfo).then((id) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                CurriculumDetail())));
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
