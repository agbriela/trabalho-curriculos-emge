import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/database/app_database.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/SkillsInfoForms.dart';

class PersonalInfosForm extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
                "Informações Pessoais",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            _textBox("Nome Completo", TextInputType.text, nameController),
            _textBox("Email", TextInputType.emailAddress, emailController),
            _textBox("Telefone", TextInputType.number, phoneController),
            _textBox("Endereço", TextInputType.text, addressController),
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
                    //final String image = "images/OhTalDoCleythinn.png";
                    final String name = nameController.text;
                    final String email = emailController.text;
                    final String phone = phoneController.text;
                    final String address = addressController.text;

                    final PersonalInfo newInfo = PersonalInfo(
                        email: email,
                        name: name,
                        phone: phone,
                        address: address);

                    savePersonalInfo(newInfo).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SkillsInfoForm())));
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
