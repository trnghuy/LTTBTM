import 'package:ex01/flutter_02.dart';
import 'package:ex01/flutter_03.dart';
import 'package:flutter/material.dart';
import 'flutter_01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//             seedColor: const Color.fromARGB(255, 205, 95, 141)),
//         useMaterial3: true,
//       ),
//       home:  FirstPage(),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuyển đổi nhiệt độ',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Màu chủ đạo
        useMaterial3: true, // Sử dụng Material 3
      ),
      home: TemperatureConverter(), // Đảm bảo `TemperatureConverter` có từ khóa `const`
    );
  }
}