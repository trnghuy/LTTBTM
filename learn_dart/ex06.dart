// class, object

class Sinhvien{
  String _hoTen;
  int _age;
  String _mssv;
  double _dtb;

  // constructor
Sinhvien(this._hoTen,
         this._age,
         this._mssv,
         this._dtb);

// getter
String get hoTen => _hoTen;
int get age      => _age;
String get mssv  => _mssv;
double get dtb   => _dtb;

//setter
set hoTen(String hoTen){
  if(hoTen.isNotEmpty) {
    _hoTen = hoTen;
  }
}

set age(int age){
  _age = (age>0)?age:_age;
}

set mssv(String mssv) {
  if (mssv.isNotEmpty) {
    _mssv = mssv;
  }
}

set dtb(double dtb){
    //_dtb = (dtb>=0 && dtb <=10)?dtb:_dtb;
   if (dtb >=0 && dtb<= 10){
     _dtb = dtb;
   }
 }




 //methods
  void outPut(){
  print('Ho va ten : $hoTen');
  print('age : $age');
  print('ma so sinh vien : $mssv');
  print('diem trung binh : $dtb');
  }

  String xepHang(){
    if(_dtb >= 8.0)   return 'gioi';
    if(_dtb >= 6.5)  return 'khá';
    if(_dtb >= 5.0)   return 'trung binh';
    return ' yeu';
  }


}




