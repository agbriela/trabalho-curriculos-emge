import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:trabalho_final_curriculo/model/DataModel.dart';

Future<Database> createDatabase() async {
  String directoryDB = await getDatabasesPath();
  String fullPathDB = join(directoryDB, "curriculum.db");

  return openDatabase(
    fullPathDB,
    version: 1,
    onCreate: (db, version) {
      db.execute('CREATE TABLE personal_info ('
          'id INTEGER PRIMARY KEY,'
          'email TEXT'
          'name TEXT,'
          'phone INTEGER'
          'address TEXT'
          ')');

      db.execute('CREATE TABLE skills ('
          'id INTEGER PRIMARY KEY,'
          'dart INTEGER'
          'mysql INTEGER'
          'html INTEGER'
          'python INTEGER'
          'office INTEGER'
          'photoshop INTEGER'
          'css INTEGER'
          ')');

      db.execute('CREATE TABLE experience ('
          'id INTEGER PRIMARY KEY,'
          'experience1 TEXT'
          'date1 TEXT'
          'description1 TEXT'
          'experience2 TEXT'
          'date2 TEXT'
          'description2 TEXT'
          'experience3 TEXT'
          'date3 TEXT'
          'description3 TEXT'
          ')');

      db.execute('CREATE TABLE graduation ('
          'id INTEGER PRIMARY KEY,'
          'graduation1 TEXT'
          'dateGraduation1 TEXT'
          'descriptionGraduation1 TEXT'
          'graduation2 TEXT'
          'dateGraduation2 TEXT'
          'descriptionGraduation2 TEXT'
          ')');

      db.execute('CREATE TABLE language ('
          'id INTEGER PRIMARY KEY,'
          'language1 TEXT'
          'level1 INTEGER'
          'language2 TEXT'
          'level2 INTEGER'
          'language3 TEXT'
          'level3 INTEGER'
          'language4 TEXT'
          'level4 INTEGER'
          ')');

      db.execute('CREATE TABLE qualities ('
          'id INTEGER PRIMARY KEY,'
          'qualities1 TEXT'
          'levelQuality1 INTEGER'
          'qualities2 TEXT'
          'levelQuality2 INTEGER'
          'qualities3 TEXT'
          'levelQuality3 INTEGER'
          'qualities4 TEXT'
          'levelQuality4 INTEGER'
          ')');
    },
  );
}

Future savePersonalInfo(PersonalInfo model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "personal_info",
      model.personalInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future saveSkills(Skills model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "skills",
      model.skillsInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future saveExperience(Experience model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "experience",
      model.experienceInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future saveGraduation(Graduation model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "graduation",
      model.graduationInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future saveLanguage(Language model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "language",
      model.languageInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future saveQualities(Qualities model) async {
  try {
    final Database db = await createDatabase();
    await db.insert(
      "qualities",
      model.qualitiesInfo(),
    );
  } catch (exception) {
    print(exception);
    return;
  }
}

Future<List<PersonalInfo>> getAllProducts() async {
  final db = await createDatabase();
  List<Map> results = await db.query("personal_info", orderBy: "id ASC");
  List<PersonalInfo> products = new List();
  results.forEach((result) {
    PersonalInfo personalInfo = PersonalInfo();
    products.add(personalInfo);
  });
  return products;
}

Future<PersonalInfo> getProductById(int id) async {
  final db = await createDatabase();
  var result = await db.query("personal_info", where: "id = ", whereArgs: [id]);
  return result.isNotEmpty ? PersonalInfo() : Null;
}

insert(PersonalInfo product) async {
  final db = await createDatabase();
  var maxIdResult = await db
      .rawQuery("SELECT MAX(id)+1 as last_inserted_id FROM personal_info");
  var id = maxIdResult.first["last_inserted_id"];
  var result = await db.rawInsert(
      "INSERT Into Product (id, name, email, phone, address)"
      " VALUES (?, ?, ?, ?, ?)",
      [id, product.name, product.email, product.phone, product.address]);
  return result;
}
