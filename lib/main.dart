import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mvc/views/country_view.dart';
import 'package:latihan_mvc/views/university_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CountryView(),
    );
  }
}


