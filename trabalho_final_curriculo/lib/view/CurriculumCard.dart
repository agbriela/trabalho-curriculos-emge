import 'package:flutter/material.dart';

class CurriculumCard extends StatefulWidget {

  @override
  _CurriculumCardState createState() => _CurriculumCardState();
}

class _CurriculumCardState extends State<CurriculumCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: imageLoader(),
    );
  }

  Widget imageLoader() {
    return Image.asset("images/OhTalDoCleythinn.png");
  }
}
