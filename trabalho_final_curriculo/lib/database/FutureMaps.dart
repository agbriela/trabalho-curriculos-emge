import 'package:trabalho_final_curriculo/model/DataModel.dart';

import 'app_database.dart';

Future<List<Language>> languageFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('language');

  return List.generate(maps.length, (i) {
    return Language(
      id: maps[i]['id'],
      language1: maps[i]['language1'],
      level1: maps[i]['level1'],
      language2: maps[i]['language2'],
      level2: maps[i]['level2'],
      language3: maps[i]['language3'],
      level3: maps[i]['level3'],
      language4: maps[i]['language4'],
      level4: maps[i]['level4'],
    );
  });
}

Future<List<Qualities>> qualitiesFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('language');

  return List.generate(maps.length, (i) {
    return Qualities(
      id: maps[i]['id'],
      qualities1: maps[i]['qualities1'],
      levelQuality1: maps[i]['levelQuality1'],
      qualities2: maps[i]['qualities2'],
      levelQuality2: maps[i]['levelQuality2'],
      qualities3: maps[i]['qualities3'],
      levelQuality3: maps[i]['levelQuality3'],
      qualities4: maps[i]['qualities4'],
      levelQuality4: maps[i]['levelQuality4'],
    );
  });
}

Future<List<Graduation>> graduationFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('graduation');

  return List.generate(maps.length, (i) {
    return Graduation(
      id: maps[i]['id'],
      graduation1: maps[i]['graduation1'],
      dateGraduation1: maps[i]['dateGraduation1'],
      descriptionGraduation1: maps[i]['descriptionGraduation1'],
      graduation2: maps[i]['graduation2'],
      dateGraduation2: maps[i]['dateGraduation2'],
      descriptionGraduation2: maps[i]['descriptionGraduation2'],
    );
  });
}


Future<List<Skills>> skillsFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('skills');

  return List.generate(maps.length, (i) {
    return Skills(
      id: maps[i]['id'],
      dart: maps[i]['dart'],
      mySQL: maps[i]['mySQL'],
      html: maps[i]['html'],
      python: maps[i]['python'],
      office: maps[i]['office'],
      photoshop: maps[i]['photoshop'],
      css: maps[i]['css'],
    );
  });
}

Future<List<PersonalInfo>> personalInfoFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('personal_info');

  return List.generate(maps.length, (i) {
    return PersonalInfo(
      id: maps[i]['id'],
      email: maps[i]['email'],
      name: maps[i]['name'],
      phone: maps[i]['phone'],
      address: maps[i]['address'],
    );
  });
}

Future<List<Experience>> experienceFuture() async {
  final db = await createDatabase();

  final List<Map<String, dynamic>> maps = await db.query('experience');

  return List.generate(maps.length, (i) {
    return Experience(
        id: maps[i]['id'],
        experience1: maps[i]['experience1'],
        date1: maps[i]['date1'],
        description1: maps[i]['description1'],
        experience2: maps[i]['experience2'],
        date2: maps[i]['date2'],
        description2: maps[i]['description2'],
        experience3: maps[i]['experience3'],
        date3: maps[i]['date3'],
        description3: maps[i]['description3']);
  });
}
