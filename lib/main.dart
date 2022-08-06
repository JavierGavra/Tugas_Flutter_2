import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/halamanUtama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listview project",
      theme: ThemeData(scaffoldBackgroundColor: Color(0xffececec)),
      home: HalamanUtama(),
    );
  }
}
