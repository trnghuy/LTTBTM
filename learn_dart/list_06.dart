import 'ex06.dart';

class LopHoc{
  String _lop;
  List<Sinhvien> _ds = [];

  //constrictor
  LopHoc(this._lop);

  //getter
  String get lop => _lop;
  //List <Sinhvien> get => _ds;

  // setter
  set lop(String lop){
    if(lop.isNotEmpty) {
      _lop = lop;
    }
  }

  // methods

  void addsv(Sinhvien sv)=> _ds.add(sv);

  void outDSSV(){
    print('danh sach sinh vien cua lop $_lop');
    for(var sv in _ds){
      print('\nthong tin sinh vien:');
      sv.outPut();
      print('xep loai: ${sv.xepHang()}');
    }
  }

}

