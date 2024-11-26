import 'dart:io';
import 'dart:convert';//cho phép nhập liệu có dấu

void main(){
  print('Ho va ten:');
  var fullname = stdin.readLineSync(encoding: utf8)!;// đọc vào có dấu
  print('xin chao"$fullname"! bạn bao nhiêu tuổi:');
  int age = int.parse(stdin.readLineSync()!) ;// chuyển đổi du liệu
  print('diem gpa cua ban la bao nhieu:');
  double gpa = double.parse(stdin.readLineSync()!);

  // xuat ten va tuoi
  print('thong tin nguoi dung');
  print('Anh "$fullname"');
  print('nam nay ban $age tuoi');
  print('điểm gpa hiện tại: ${gpa.toStringAsFixed(2)}');// làm tròn 2 số thập phân
}