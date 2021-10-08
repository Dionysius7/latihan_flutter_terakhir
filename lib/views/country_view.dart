import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_mvc/views/university_view.dart';


class CountryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final countryTextController = Get.put(TextEditingController());
      double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Input Country"),
            Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: TextFormField(
                        controller: countryTextController,
                        cursorColor: Color(0xFF494da0),
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black),
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.flag, color: Colors.black),
                            hintText: "Country",
                            focusColor: Colors.black,
                            fillColor: Colors.black,
                            hintStyle: TextStyle(color: Colors.black),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF494da0))),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF494da0)))),
                      ),
                    ),
            ),
                    Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  width: width / 1.5,
                  child: MaterialButton(
                      onPressed: () {
                          Get.to(UniversityView(countryName: countryTextController.text));
                        },
                      child: Text("See University",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      color: Color(0xFF494da0),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(13),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(35))),
                )
          ],
        ),
      ),
    );
  }
}