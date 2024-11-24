void main(){
  // Khai bao bien co ban
  var ten= 'Tung';
  int tuoi = 25;

  //  Su dung null safety
  String? tenNullable;
  tenNullable = null;

  // late
  late String moTa;
  moTa = 'Lap trinh Dart';

  // Su dung final va const
  final String quocGia;
  quocGia = 'Vietnam';
  // quocGia = 'Lao'; => loi

  const int nam =2024;

  print('Năm: $nam');
}