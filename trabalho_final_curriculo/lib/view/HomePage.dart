import 'package:flutter/material.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';
import 'package:trabalho_final_curriculo/view/form/PersonalInfoForm.dart';

import 'CurriculumCard.dart';
import 'CurriculumDetail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    final title = 'Currículos';
    return MaterialApp(
      title: title,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xFFC5203C))),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: _gridView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _addCurriculum();
          },
          child: const Icon(Icons.add),
          backgroundColor: Color(0xFFC5203C),
        ),
      ),
    );
  }

  Widget _gridView() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 200 / 330,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _card();
        });
  }

  Widget _card() {
    return GestureDetector(
        onTap: () {
          _selectedCurriculum();
        },
        child: CurriculumCard());
  }

  void _selectedCurriculum() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => CurriculumDetail()));
  }

  void _addCurriculum() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => PersonalInfosForm())
    );
  }

}
