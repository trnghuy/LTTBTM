

import 'DT.dart';

class HoaDon{
  String _maHoaDon;
  DateTime _ngayBan;
  String _dtDuocBan;
  int _slMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _sdt;
  DT dienThoai;


  // constructor
  HoaDon(this._maHoaDon,
         this._ngayBan,
         this._dtDuocBan,
         this._slMua,
         this._giaBanThucTe,
         this._tenKhachHang,
         this._sdt,
         this.dienThoai);


  //getter
  String get maHoaDon => _maHoaDon;
  DateTime get ngayBan => _ngayBan;
  String get dtDuocBan => _dtDuocBan;
  int get slMua => _slMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKhachHang => _tenKhachHang;
  String get sdt => _sdt;

  //setter
  set maHoaDon(String maHoaDon){
    if(maHoaDon.isNotEmpty) {
      _maHoaDon = maHoaDon;
    }
  }
  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isAfter(DateTime.now())) {
      throw ArgumentError('Ngày bán không được sau ngày hiện tại');
    }
    _ngayBan = ngayBan;
  }

  set slMua(int slMua){
    if(slMua > 0 && slMua > dienThoai.slTonKhoa) {
      _slMua = slMua;
    }
  }

  set giaBanThucTe(double giaBanThucTe){
    if(giaBanThucTe > 0) {
      _giaBanThucTe = giaBanThucTe;
    }
  }

  set tenKhachHang(String tenKhachHang){
    if(maHoaDon.isNotEmpty) {
      _tenKhachHang = tenKhachHang;
    }
  }

  set sdt(String sdt){
    if(sdt.isNotEmpty) {
      _sdt = sdt;
    }
  }

  // tinh tong tien
  double tinhTongTien(){
    return giaBanThucTe*slMua;
  }

  // tính lợi nhuận thực tế
double tinhLoiNhuan(){
    return (giaBanThucTe - dienThoai.giaNhap)*slMua;
}

  void output(){
    print('\n----thong tin hoa don-------');
    print('ma hoa don: $maHoaDon');
    print('dien thoai dươc ban: $dtDuocBan');
    print('so luong ban: $slMua');
    print('gia ban thuc te: $giaBanThucTe');
    print('ten khach hang: $tenKhachHang');
    print('so dien thoai khach hang: $sdt');

  }
}
