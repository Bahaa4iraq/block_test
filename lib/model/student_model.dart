class StudentModel {
  int? id;
  String? name;
  String? phone;
  String? rFID;
  String? school;
  String? parentPhone;
  String? address;
  int? classNameId;
  int? isMale;
  int? status;
  String? createdAt;
  String? updatedAt;
  ClassName? className;
  List<Courses>? courses;

  StudentModel(
      {this.id,
      this.name,
      this.phone,
      this.rFID,
      this.school,
      this.parentPhone,
      this.address,
      this.classNameId,
      this.isMale,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.className,
      this.courses});

  StudentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    rFID = json['RFID'];
    school = json['school'];
    parentPhone = json['parent_phone'];
    address = json['address'];
    classNameId = json['class_name_id'];
    isMale = json['is_male'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    className = json['class_name'] != null
        ? ClassName.fromJson(json['class_name'])
        : null;
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(Courses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['RFID'] = rFID;
    data['school'] = school;
    data['parent_phone'] = parentPhone;
    data['address'] = address;
    data['class_name_id'] = classNameId;
    data['is_male'] = isMale;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (className != null) {
      data['class_name'] = className!.toJson();
    }
    if (courses != null) {
      data['courses'] = courses!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ClassName {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  ClassName({this.id, this.name, this.createdAt, this.updatedAt});

  ClassName.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Courses {
  int? id;
  int? amount;
  int? subjectId;
  int? teacherId;
  int? classNameId;
  int? isMale;
  int? status;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;
  Teacher? teacher;
  ClassName? subject;
  ClassName? className;

  Courses(
      {this.id,
      this.amount,
      this.subjectId,
      this.teacherId,
      this.classNameId,
      this.isMale,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.pivot,
      this.teacher,
      this.subject,
      this.className});

  Courses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    subjectId = json['subject_id'];
    teacherId = json['teacher_id'];
    classNameId = json['class_name_id'];
    isMale = json['is_male'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    teacher =
        json['teacher'] != null ? Teacher.fromJson(json['teacher']) : null;
    subject =
        json['subject'] != null ? ClassName.fromJson(json['subject']) : null;
    className = json['class_name'] != null
        ? ClassName.fromJson(json['class_name'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['subject_id'] = subjectId;
    data['teacher_id'] = teacherId;
    data['class_name_id'] = classNameId;
    data['is_male'] = isMale;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    if (teacher != null) {
      data['teacher'] = teacher!.toJson();
    }
    if (subject != null) {
      data['subject'] = subject!.toJson();
    }
    if (className != null) {
      data['class_name'] = className!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? studentId;
  int? courseId;
  Null createdAt;
  Null updatedAt;

  Pivot({this.studentId, this.courseId, this.createdAt, this.updatedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    courseId = json['course_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['student_id'] = studentId;
    data['course_id'] = courseId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Teacher {
  int? id;
  String? name;
  String? phone;
  int? status;
  int? subjectId;
  String? createdAt;
  String? updatedAt;

  Teacher(
      {this.id,
      this.name,
      this.phone,
      this.status,
      this.subjectId,
      this.createdAt,
      this.updatedAt});

  Teacher.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    status = json['status'];
    subjectId = json['subject_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['status'] = status;
    data['subject_id'] = subjectId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
