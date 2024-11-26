// class dien thoai

class DT{
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _slTonKhoa;
  bool _trangThai;

  // constructor
  DT(this._maDT,
      this._tenDT,
      this._hangSX,
      this._giaNhap,
      this._giaBan,
      this._slTonKhoa,
      this._trangThai);

  //getter

  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get slTonKhoa => _slTonKhoa;
  bool get trangThai => _trangThai;

  // setter
  set maDT(String maDT){
    if(maDT.isNotEmpty) {
      _maDT = maDT;
    }
  }
  set tenDT(String tenDT){
    if(tenDT.isNotEmpty) {
      _tenDT = tenDT;
    }
  }
  set hangSX(String hangSX){
    if(hangSX.isNotEmpty) {
      _hangSX = hangSX;
    }
  }

  set giaNhap(double giaNhap){
    if(giaNhap > 0) {
      _giaNhap = giaNhap;
    }
  }

  set giaBan(double giaBan){
    if(giaBan > 0 && giaBan>_giaNhap) {
      _giaBan = giaBan;
    }
  }

  set slTonKhoa(int slTonKhoa){
    if(slTonKhoa >= 0) {
      _slTonKhoa = slTonKhoa;
    }
  }

  set trangThai(bool trangThai){
    _trangThai = trangThai;
  }


  double loiNhuanDuKien(){
    return (giaBan-giaNhap)*slTonKhoa;
  }


  void output(){
    print('---------thong tin cua dien thoai----------');
    print('ma dien thoai $maDT');
    print('ten dien thoai $tenDT');
    print('hang cua dien thoai $hangSX');
    print('gia nhap dien thoai $giaNhap');
    print('gia ban dien thoai $giaBan');
    print('so luong ton kho $slTonKhoa');
  }

  bool kiemTraCoTheBan() {
    return _slTonKhoa > 0 && _trangThai;
  }
}