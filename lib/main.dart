import 'package:flutter/material.dart';
import 'package:latihan_sabtu/latih_image.dart'; //android
// import 'package:flutter/cupertino.dart'; //ios
// import 'bab1/latihan23456_worldinput.dart';
// import 'bab1/persegi_panjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bagian flutter 2",
      home: LatihGambar(),
    );
  }
}
