import 'package:flutter/material.dart';

import 'package:trabalho_final_curriculo/model/DataModel.dart';

class CurriculumDetail extends StatefulWidget {
  @override
  _CurriculumDetailState createState() => _CurriculumDetailState();
}

class _CurriculumDetailState extends State<CurriculumDetail> {
  Widget build(BuildContext context) {
    final title = 'Currículo';
    return MaterialApp(
      title: title,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xFFC5203C))),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(title),
        ),
        body: Item(Experience(), Graduation(), Skills(), Language(),
            Qualities(), PersonalInfo()),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final Experience experience;
  final Graduation graduation;
  final Skills skills;
  final Language language;
  final Qualities qualities;
  final PersonalInfo personalInfo;

  Item(this.experience, this.graduation, this.skills, this.language,
      this.qualities, this.personalInfo);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SingleChildScrollView(
          child: (_personalInfo()),
        ),
       _skillsInfo(),
      ],
    );
  }

  Widget _personalInfo() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 24,),
          child: Text('${personalInfo.name}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 1,  left: 10, right: 95),
          child: Row(
            children: [
              _rotatedBox("Experiência"),
              _verticalLine(),
              Column(
                children: [
                  _infoEdit('${experience.experience1}', '${experience.date1}',
                      '${experience.description1}'),
                  _infoEdit('${experience.experience2}', '${experience.date2}',
                      '${experience.description2}'),
                  _infoEdit('${experience.experience3}', '${experience.date3}',
                      '${experience.description3}'),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 64.0,  left: 10, right: 95),
          child: Row(
            children: [
              _rotatedBox("Formação"),
              _verticalLine(),
              Column(
                children: [
                  _infoEdit(
                      '${graduation.graduation1}',
                      '${graduation.dateGraduation1}',
                      '${graduation.descriptionGraduation1}'),
                  _infoEdit(
                      '${graduation.graduation2}',
                      '${graduation.dateGraduation2}',
                      '${graduation.descriptionGraduation2}'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _skillsInfo() {
    return AspectRatio(
      aspectRatio: 30 / 100,
      child: Container(
        margin: const EdgeInsets.only(left: 10.0),
        color: Color(0xffD5D0D0),
        child: Column(children: [
          Container(
            width: 300,
            color: Color(0xff4A5859),
            child: Icon(
              Icons.person,
              size: 163,
              color: Colors.white,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text('${personalInfo.email}')),
          Text('${personalInfo.phone}'),
          Text('${personalInfo.address}'),
          Container(
            margin: const EdgeInsets.only(left: 100.0, top: 20, bottom: 10),
            child: Text("Habilidades",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          _skillsEdit("${skills.dart}%", "Dart"),
          _skillsEdit("${skills.mySQL}%", "MySQL"),
          _skillsEdit("${skills.html}%", "HTML"),
          _skillsEdit("${skills.python}%", "Python"),
          _skillsEdit("${skills.office}%", "Pacote Office"),
          _skillsEdit("${skills.photoshop}%", "Photoshop"),
          _skillsEdit("${skills.css}%", "CSS"),
          Container(
            margin: const EdgeInsets.only(left: 100.0, top: 20, bottom: 10),
            child: Text("Linguagens",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          _skillsEdit("${language.level1}%", '${language.language1}'),
          _skillsEdit("${language.level2}%", '${language.language2}'),
          _skillsEdit("${language.level3}%", '${language.language3}'),
          _skillsEdit("${language.level4}%", '${language.language4}'),
          Container(
            margin: const EdgeInsets.only(left: 100.0, top: 20, bottom: 10),
            child: Text("Qualidades",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          _skillsEdit("${qualities.levelQuality1}%", '${qualities.qualities1}'),
          _skillsEdit("${qualities.levelQuality2}%", '${qualities.qualities2}'),
          _skillsEdit("${qualities.levelQuality3}%", '${qualities.qualities3}'),
          _skillsEdit("${qualities.levelQuality4}%", '${qualities.qualities4}'),
        ]),
      ),
    );
  }

  Widget _rotatedBox(String assunto) {
    return Container(
        margin: const EdgeInsets.only(left: 10.0, top: 10.0),
        color: Color(0xFFC5203C),
        height: 200,
        width: 40,
        child: RotatedBox(
          quarterTurns: -1,
          child: Padding(
            padding: const EdgeInsets.only(left: 48.0, right: 10.0, top: 10.0),
            child: Text(assunto,
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ));
  }

  Widget _verticalLine() {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      height: 300.0,
      width: 1.0,
      color: Colors.black,
    );
  }

  Widget _infoEdit(String title, String date, String description) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(date, style: TextStyle(fontSize: 10)),
        Text(description,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))
      ],
    );
  }

  Widget _skillsEdit(String percent, String skill) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.only(right: 24.0, left: 54),
            child: Text(percent)),
        Container(child: Text(skill)),
      ],
    );
  }
}
