
import 'CuaHang.dart';
import 'DT.dart';
import 'HoaDon.dart';

void main() {
  // Khởi tạo cửa hàng
  CuaHang ch = CuaHang("The Gioi Di Dong", "123 Đường ABC, TP HCM");

  // Thêm các điện thoại vào danh sách
  DT dt1 = DT(
      "DT001",
      "iPhone 15",
      "Apple",
      2000,
      4000,
      50,
      true);
  DT dt2 = DT(
      "DT002",
      "Galaxy S23",
      "Samsung",
      1000,
      3000,
      30,
      true);
  DT dt3 = DT(
      "DT003",
      "1980",
      "NoKia",
      500,
      100,
      20,
      true);

  ch.add_DT(dt1);
  ch.add_DT(dt2);
  ch.add_DT(dt3);

  // Hiển thị danh sách điện thoại
  print("===> Danh sách điện thoại ban đầu <===");
  ch.outPutDSDT();

  // // Tạo hóa đơn
  HoaDon hd1 = HoaDon(
    "HD001",
    DateTime(2024, 11, 25),
    "iPhone 15",
    5,
    6000,
    "Nguyen Van A",
    "0987654321",
    dt1,
  );

  HoaDon hd2 = HoaDon(
    "HD002",
    DateTime(2024, 11, 26),
    "Galaxy S23",
    3,
    4000,
    "Le Thi B",
    "0976543210",
    dt2,
  );

  ch.taohd(hd1);
  ch.taohd(hd2);


  // Hiển thị danh sách hóa đơn
  print("\n=== Danh sách hóa đơn ===");
  ch.outputDSHD();

  // trong khoảng thời gian
  DateTime ngayBD = DateTime(2024, 11, 1);
  DateTime ngayKT = DateTime(2024, 11, 30);

  // tính doanh thu
  double doanhThu = ch.tinhDoanhThu(ngayBD, ngayKT);
  print("\nDoanh thu từ ngày $ngayBD đến ngày $ngayKT:==> $doanhThu");

  // Tính lợi nhuận
  double loiNhuan = ch.tinhLoiNhuan(ngayBD, ngayKT);
  print("\nLợi nhuận từ ngày $ngayBD đến ngày $ngayKT:==> $loiNhuan");

  // Báo cáo tồn kho
  print("\n=== Báo cáo tồn kho ===");
  ch.baoCaoTonKho();

  // Top bán chạy
  print("\n===> Top 2 sản phẩm bán chạy <===");
  List<HoaDon> topBanChay = ch.topBanChay(ngayBD, ngayKT, 2);
  for (var hoaDon in topBanChay) {
    hoaDon.output();
  }
}
