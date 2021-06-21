import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/ExperienceInfoForm.dart';

class QualitiesInfoForm extends StatelessWidget {
  TextEditingController qualities1Controller = TextEditingController();
  TextEditingController levelQuality1Controller = TextEditingController();
  TextEditingController qualities2Controller = TextEditingController();
  TextEditingController levelQuality2Controller = TextEditingController();
  TextEditingController qualities3Controller = TextEditingController();
  TextEditingController levelQuality3Controller = TextEditingController();
  TextEditingController qualities4Controller = TextEditingController();
  TextEditingController levelQuality4Controller = TextEditingController();

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
                "Qualidades Profissionais",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox(
                "Qualidade 1", TextInputType.text, qualities1Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                levelQuality1Controller, "0 a 100"),
            _textBox(
                "Qualidade 2", TextInputType.text, qualities2Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                levelQuality2Controller, "0 a 100"),
            _textBox(
                "Qualidde 3", TextInputType.text, qualities3Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                levelQuality3Controller, "0 a 100"),
            _textBox(
                "Qualidade 4", TextInputType.text, qualities4Controller, ""),
            _textBox("Nivel de conhecimento", TextInputType.number,
                levelQuality4Controller, "0 a 100"),
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
                    final String qualities1 = qualities1Controller.text;
                    final String qualities2 = qualities2Controller.text;
                    final String qualities3 = qualities3Controller.text;
                    final String qualities4 = qualities4Controller.text;
                    final String levelQuality1 = levelQuality1Controller.text;
                    final String levelQuality2 = levelQuality2Controller.text;
                    final String levelQuality3 = levelQuality3Controller.text;
                    final String levelQuality4 = levelQuality4Controller.text;

                    final Qualities newInfo = Qualities(
                        qualities1: qualities1,
                        qualities2: qualities2,
                        qualities3: qualities3,
                        qualities4: qualities4,
                        levelQuality1: levelQuality1,
                        levelQuality2: levelQuality2,
                        levelQuality3: levelQuality3,
                        levelQuality4: levelQuality4);

                    saveQualities(newInfo).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ExperienceInfoForm())));
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

  void _newCurriculum() {}
}
