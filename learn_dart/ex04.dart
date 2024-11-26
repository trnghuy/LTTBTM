//  class , object

class Dog {
  String? color;
  String? favoriteFood;

  void makeSound() {}

  void wave() {}

  void sale() {}
}

class Student {
  String? mssv;
  String? major;
  String? fullname;
  double gpa = 0;

  void goToSchool(String by) {}

  void doExam(String subject, int time) {}

  void payFee(String term, int amount) {}
}

void main() {
  var loan = Student();
  loan.mssv = '238674583';
  loan.fullname = 'nguyen van  loan';
  loan.gpa = 3.66;
  loan.major = 'cntt';

  loan.doExam('dart program', 60);
  loan.payFee('2025.1', 10000);

  print('ma sv: ${loan.mssv}');
  print('ho  va ten: ${loan.fullname}');
  print('chuyen nghanh: ${loan.major}');
  print('diem gpa: ${loan.gpa}');
}
