import 'ex06.dart';
import 'list_06.dart';

void main(){
  var sv = Sinhvien('nguyen van a', 20, 'sv007', 7);
  //print(sv.hoTen);
  sv.outPut();


  sv.hoTen = 'nguyen van b';// đổi tên gán set
  print('--------');
  sv.outPut();
  print(sv.xepHang());
  print('--------');


  sv.hoTen = ' nguyen van b';
  sv.dtb = 9; // gán điểm mới cho b
  sv.outPut();
  print(sv.xepHang());


  var lopHoc = LopHoc('LTTBDD');
  lopHoc.addsv(Sinhvien('nguyen van k', 20, 'sv007', 7));
  lopHoc.addsv(Sinhvien('nguyen van g', 20, 'sv009', 10));
  lopHoc.addsv(Sinhvien('nguyen van l', 20, 'sv005', 4));
  lopHoc.addsv(Sinhvien('nguyen van m', 20, 'sv002', 8));
  lopHoc.outDSSV();
}
