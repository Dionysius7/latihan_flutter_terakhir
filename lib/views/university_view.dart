import 'package:flutter/material.dart';
import 'package:latihan_mvc/controllers/university_controller.dart';
import 'package:get/get.dart';

class UniversityView extends StatelessWidget {

  UniversityView({Key? key, required this.countryName})
      : super(key: key);
  final String countryName;
  final universityController = Get.put(UniversityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Padding(padding: const EdgeInsets.all(10), child: Text(this.countryName.toString()),),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder<String>(
                future: universityController.findUniversityData(this.countryName.toString()),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    if(snapshot.data == "200"){
                      return Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 80),
                          itemCount: universityController.university.length,
                          itemBuilder: (context, index){
                            return Container(
                              color: Colors.green,
                              margin: EdgeInsets.only(bottom: 10),
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('${universityController.university[index].alphaTwoCode}', style: TextStyle(fontSize: 10,),),
                                        Text('${universityController.university[index].country}' ,style: TextStyle(fontSize: 10,),),
                                        Text('${universityController.university[index].domains}',style: TextStyle(fontSize: 10,),),
                                        Text('${universityController.university[index].name}',style: TextStyle(fontSize: 10,),),
                                        Text('${universityController.university[index].stateProvince}',style: TextStyle(fontSize: 10,),),
                                        Text('${universityController.university[index].webPages}',style: TextStyle(fontSize: 10,),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            );
                          }
                        )
                      );
                    } else {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("EMPTY DATA"),
                          ],
                        ),
                      );
                    }
                  } else {
                    return Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(color: Colors.green,),
                          ],
                        ),
                      )
                    );
                  }
                },
                )
            ],
          ),
        ),
      ),
    );
  }
}