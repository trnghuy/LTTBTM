
import 'DT.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;

  List<DT>_dsdt = [];
  List<HoaDon> _dshd = [];

  // constructor
  CuaHang(this._tenCuaHang,
      this._diaChi);

  // các methods quan lý điẹn thoại
  void add_DT(DT dt) => _dsdt.add(dt);

  // cap nhat thong tin dien thoai
  void upDateDT(String maDT, DT newDT) {
    for (var dt in _dsdt) {
      if (dt.maDT == maDT) {
        dt.tenDT = newDT.tenDT;
        dt.hangSX = newDT.hangSX;
        dt.giaNhap = newDT.giaNhap;
        dt.giaBan = newDT.giaBan;
        dt.slTonKhoa = newDT.slTonKhoa;
        dt.trangThai = newDT.trangThai;
        print('câp nhât thanh cong cho ma DT:$maDT');
      }
    }
    print('khong tim thay dien thoai vơi ma: $maDT');
  }

  // ngừng kinh doanh điẹn thoại
  void stopKinhDoanhDT(String maDT) {
    for (var dt in _dsdt) {
      if (dt.maDT == maDT) {
        dt.trangThai = false;
        print('Dien thoai $maDT đã ngừng kinh doanh');
        return;
      }
    }
    print('khong tim thay dien thoai vơi ma: $maDT');
  }

  // tìm kiếm điẹn thoại theo(maDT,tênDT,hãng)
  void findDT({String? maDT, String? tenDT, String? hangSX}) {
    var find = _dsdt.where((dt) {
      return (maDT != null && dt.maDT == maDT) ||
          (tenDT != null && dt.tenDT.contains(tenDT)) ||
          (hangSX != null && dt.hangSX.contains(hangSX));
    }
    ).toList();
    if (find.isEmpty) {
      print('khong tim thay');
    } else {
      find.forEach((dt) => print(dt));
    }
  }

  // output danh sach dien thoai
  void outPutDSDT() {
    for (var dt in _dsdt) {
      dt.output();
    }
  }
    // tạo hoá đơn mới
  void taohd(HoaDon hoaDon) {
      DT? dienThoai;
      // tìm dt theo mã
      for (var dt in _dsdt) {
        if (dt.maDT == hoaDon.dienThoai.maDT) {
          dienThoai = dt;
          break; // dừng nếu thấy
        }
      }
      //kiểm tra
      if (dienThoai == null) {
        print('khong tim thay dien thoai');
        return;
      }
      if (dienThoai.slTonKhoa >= hoaDon.slMua) {
        dienThoai.slTonKhoa -= hoaDon.slMua; // cập nhật
        _dshd.add(hoaDon); //thêm hoá đơn
        print('\n==>them thanh cong');
      } else {
        print('==>khong du so luong');
      }
  }

    // tìm kiếm hoá đơn
    void findHoaDon( {String? maHoaDon, DateTime? ngayBan, String? tenKhachHang}) {
      print("Ket qua tim kiem");
      var find = _dshd.where((hoaDon) {
        bool dungMa = maHoaDon == null || hoaDon.maHoaDon == maHoaDon;
        bool dungNgay = ngayBan == null || hoaDon.ngayBan == ngayBan;
        bool dungTen = tenKhachHang == null ||
            hoaDon.tenKhachHang.contains(tenKhachHang);

        return dungMa && dungNgay && dungTen;
      }).toList();

      // Hiển thị kết quả
      if (find.isEmpty) {
        print("Khong tim thay hoa don nao.");
      } else {
        find.forEach((hoaDon) {
          hoaDon.output();
        });
      }
    }

    // output
    void outputDSHD() {
      for (var hd in _dshd) {
        hd.output();
      }
    }
      //doanh thu theo tg
      double tinhDoanhThu(DateTime ngayBD, DateTime ngayKT) {
        double tongDoanhThu = 0;

        _dshd.forEach((hoaDon) {
          if (hoaDon.ngayBan.isAfter(ngayBD) &&
              hoaDon.ngayBan.isBefore(ngayKT)) {
            tongDoanhThu += hoaDon.tinhTongTien();
          }
        });
        return tongDoanhThu;
      }


      // lợi nhuận theo tg
      double tinhLoiNhuan(DateTime ngayBD, DateTime ngayKT) {
        double tongLoiNhuan = 0;

        _dshd.forEach((hoaDon) {
          if (hoaDon.ngayBan.isAfter(ngayBD) &&
              hoaDon.ngayBan.isBefore(ngayKT)) {
            tongLoiNhuan += hoaDon.tinhLoiNhuan();
          }
        });
        return tongLoiNhuan;
      }

      // top bán chạy
      List<HoaDon> topBanChay(DateTime ngayBD, DateTime ngayKT, int topN) {
        List<HoaDon> hdTrongKhoangTG = _dshd.where((hoaDon) {
          return hoaDon.ngayBan.isAfter(ngayBD) &&
              hoaDon.ngayBan.isBefore(ngayKT);
        }).toList();
        hdTrongKhoangTG.sort((a, b) => (b.slMua).compareTo(a.slMua));
        return hdTrongKhoangTG.take(topN).toList();
    }
      // báo cáo tồn kho
      void baoCaoTonKho() {
        _dsdt.forEach((dienThoai) {
          print("ma dien thoai: ${dienThoai.maDT}");
          print("ten dien thoai: ${dienThoai.tenDT}");
          print("so luong ton kho: ${dienThoai.slTonKhoa}\n");
        });
      }
}


