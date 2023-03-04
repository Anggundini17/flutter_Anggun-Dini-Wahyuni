class Course {
  String judul;
  String deskripsi;

  Course({required this.judul, required this.deskripsi});
}

class Student {
  String name;
  String kelas;
  List<Course> courseList = [];

  Student({required this.name, required this.kelas});

  void addCourse(Course courses) {
    courseList.add(courses);
  }

  void removeCourse(Course course) {
    courseList.remove(course);
  }

  void allCourse() {
    print('Course yang diambil oleh $name adalah: ');
    for (var courses in courseList) {
      print(courses.judul);
    }
    print('');
  }
}

void main() {
  var c1 = Course(judul: 'Kimia', deskripsi: 'Kimia kelas 12');
  var c2 = Course(judul: 'Fisika', deskripsi: 'Fisika kelas 12');
  var c3 =
      Course(judul: 'Bahasa Inggris', deskripsi: 'Bahasa Inggris kelas 12');

  var s1 = Student(name: 'Anggun', kelas: '12 MIPA 4');
  var s2 = Student(name: 'Jaehyun', kelas: '12 MIPA 7');

  //ADD COURSE ANDIN
  s1.addCourse(c1);
  s1.addCourse(c3);

  //ADD COURSE JAEHYUN
  s2.addCourse(c2);
  s2.addCourse(c1);
  s2.addCourse(c3);

  //REMOVE COURSE
  s1.removeCourse(c1);
  s2.removeCourse(c2);

  s1.allCourse();
  s2.allCourse();
}
