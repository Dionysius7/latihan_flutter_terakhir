import 'package:get/get.dart';
import 'package:latihan_mvc/models/university.dart';
import 'package:latihan_mvc/service.dart';

import '../const.dart';

class UniversityController extends GetxController{
  var university = <Universitas>[].obs;
  var service = new Service();
  var constant = new Const();
  var countryName = "";

  Future<String> fetchUniversityData() async {
    var response = await service.getAllUnivIndoData(constant.indonesiaUniversity);
    print(response.statusCode.toString());
    if(response.statusCode == 200){
      var univData = universitasFromJson(response.body);
      university.value = univData;
      return response.statusCode.toString();
    } else {
      return response.statusCode.toString();
    }
  }

  Future<String> findUniversityData(country) async {
    var response = await service.findAllUnivData(constant.urlUniv, country);
    print(response.statusCode.toString());
    if(response.statusCode == 200){
      var univData = universitasFromJson(response.body);
      university.value = univData;
      return response.statusCode.toString();
    } else {
      return response.statusCode.toString();
    }
  }

  void setCountry(String country){
    countryName = country;
  }
}