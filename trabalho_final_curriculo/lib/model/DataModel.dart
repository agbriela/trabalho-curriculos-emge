class PersonalInfo {
  //String image = "images/tom.jpeg";
  final int id;
  final String email;
  final String name;
  final String phone;
  final String address;

  PersonalInfo({
    //  this.image,
    this.id,
    this.email,
    this.name,
    this.phone,
    this.address,
  });

  Map<String, dynamic> personalInfo() {
    return {
      //    'image': image,
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'address': address,
    };
  }

  @override
  String personalInfotoString() {
    return 'PersonalInfo {'
        'id: $id,'
        ' email: $email,'
        ' name: $name, '
        'phone: $phone, '
        'address: $address,'
        '}';
  }
}

class Skills {
  final int id;
  final String dart;
  final String mySQL;
  final String html;
  final String python;
  final String office;
  final String photoshop;
  final String css;

  Skills({
    this.id,
    this.dart,
    this.mySQL,
    this.html,
    this.python,
    this.office,
    this.photoshop,
    this.css,
  });

  Map<String, dynamic> skillsInfo() {
    return {
      'id': id,
      'dart': dart,
      'mySQL': mySQL,
      'html': html,
      'python': python,
      'office': office,
      'photoshop': photoshop,
      'css': css,
    };
  }

  @override
  String SkillstoString() {
    return 'Skills {'
        'id: $id,'
        'dart: $dart,'
        'mySQL: $mySQL,'
        'html: $html,'
        'python: $python,'
        'office: $office,'
        'photoshop: $photoshop,'
        'css: $css,}';
  }
}

class Experience {
  final int id;
  final String experience1;
  final String date1;
  final String description1;
  final String experience2;
  final String date2;
  final String description2;
  final String experience3;
  final String date3;
  final String description3;

  Experience({
    this.id,
    this.experience1,
    this.date1,
    this.description1,
    this.experience2,
    this.date2,
    this.description2,
    this.experience3,
    this.date3,
    this.description3,
  });

  Map<String, dynamic> experienceInfo() {
    return {
      'id': id,
      'experience1': experience1,
      'date1': date1,
      'description1': description1,
      'experience2': experience2,
      'date2': date2,
      'description2': description2,
      'experience3': experience3,
      'date3': date3,
      'description3': description3,
    };
  }

  @override
  String ExperiencetoString() {
    return 'Experience {'
        'id: $id,'
        'experience1: $experience1,'
        'date1: $date1,'
        'description1: $description1,'
        'experience2: $experience2,'
        'date2: $date2,'
        'description2: $description2,'
        'experience3: $experience3,'
        'date3: $date3,'
        '}';
  }
}

class Graduation {
  final int id;
  final String graduation1;
  final String dateGraduation1;
  final String descriptionGraduation1;
  final String graduation2;
  final String dateGraduation2;
  final String descriptionGraduation2;

  Graduation({
    this.id,
    this.graduation1,
    this.dateGraduation1,
    this.descriptionGraduation1,
    this.graduation2,
    this.dateGraduation2,
    this.descriptionGraduation2,
  });

  Map<String, dynamic> graduationInfo() {
    return {
      'id': id,
      'graduation1': graduation1,
      'dateGraduation1': dateGraduation1,
      'descriptionGraduation1': descriptionGraduation1,
      'graduation2': graduation2,
      'dateGraduation2': dateGraduation2,
      'descriptionGraduation2': descriptionGraduation2,
    };
  }

  @override
  String GraduationtoString() {
    return 'Graduation {'
        'id: $id,'
        'graduation1: $graduation1,'
        'dateGraduation1: $dateGraduation1,'
        'descriptionGraduation1: $descriptionGraduation1,'
        'graduation2: $graduation2,'
        'dateGraduation2: $dateGraduation2,'
        'descriptionGraduation2: $descriptionGraduation2,'
        '}';
  }
}

class Language {
  final int id;
  final String language1;
  final String level1;
  String language2;
  final String level2;
  String language3;
  String level3;
  String language4;
  String level4;

  Language({
    this.id,
    this.language1,
    this.language2,
    this.language3,
    this.language4,
    this.level1,
    this.level2,
    this.level3,
    this.level4,
  });

  Map<String, dynamic> languageInfo() {
    return {
      'id': id,
      'language1': language1,
      'language2': language2,
      'language3': language3,
      'language4': language4,
      'level1': level1,
      'level2': level2,
      'level3': level3,
      'level4': level4,
    };
  }

  @override
  String LanguagetoString() {
    return 'Language {'
        'id: $id,'
        'language1: $language1,'
        'language2: $language2,'
        'language3: $language3,'
        'language4: $language4,'
        'level1: $level1,'
        'level2: $level2,'
        'level3: $level3,'
        'level4: $level4,'
        '}';
  }
}

class Qualities {
  final int id;
  final String qualities1;
  final String qualities2;
  final String qualities3;
  final String qualities4;
  final String levelQuality1;
  final String levelQuality2;
  final String levelQuality3;
  final String levelQuality4;

  Qualities(
      {this.id,
      this.qualities1,
      this.qualities2,
      this.qualities3,
      this.qualities4,
      this.levelQuality1,
      this.levelQuality2,
      this.levelQuality3,
      this.levelQuality4});

  Map<String, dynamic> qualitiesInfo() {
    return {
      'id': id,
      'qualities1': qualities1,
      'qualities2': qualities2,
      'qualities3': qualities3,
      'qualities4': qualities4,
      'levelQuality1': levelQuality1,
      'levelQuality2': levelQuality2,
      'levelQuality3': levelQuality3,
      'levelQuality4': levelQuality4,
    };
  }

  @override
  String QualitiestoString() {
    return 'Qualities {'
        'id: $id,'
        'qualities1: $qualities1,'
        'qualities2: $qualities2,'
        'qualities3: $qualities3,'
        'qualities4: $qualities4,'
        'levelQuality1: $levelQuality1,'
        'levelQuality2: $levelQuality2,'
        'levelQuality3: $levelQuality3,'
        'levelQuality4: $levelQuality4,'
        '}';
  }
}
