import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Employee.dart';
//import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter/services.dart' show rootBundle;

class BrandDetailPage extends StatelessWidget {
  static const routeName = '/brand-Detail';
  // final String brandId;
  // final String brandTitle;

  BrandDetailPage();

  @override
  Widget build(BuildContext context) {
    var items = ["test", "test2"];
    return Scaffold(body: FutureBuilder(
      //future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData || items.length != 0) {
          List<Employee> myObjectList = [];
          myObjectList.add(new Employee(
              1, "Rajeeth", "https://www.gstatic.com/webp/gallery3/1.png"));
          myObjectList.add(new Employee(
              2, "Kalluru", "https://www.gstatic.com/webp/gallery3/1.png"));

          // var items = [
          //   "test",
          //   "test2",
          //   "test",
          //   "test2",
          //   "test",
          //   "test2",
          //   "test",
          //   "test2",
          //   "test",
          //   "test2",
          //   "test",
          //   "test2"
          // ];
          var items = myObjectList;
          //var items = data.data as List<Employee>;
          return ListView.builder(itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: NetworkImage(items[index].imageUrl.toString()),
                          fit: BoxFit.fill,
                        )),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 7),
                            child: Text(items[index].name.toString()),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            );
          });
        } else
          return Center(child: CircularProgressIndicator());
      },
    ));
  }

/*
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final brandId = routeArgs['id'];
    final brandTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(brandTitle!),
      ),
      body: Center(
        child: Text('Brand Detail Page information'),
      ),
    );
  }
  */
  Future ReadJsonData() async {
    Future<String> loadAsset() async {
      return await rootBundle.loadString('assets/jsonfile.json');
    }

    Map<dynamic, dynamic> jsonData;
    //loadJson() async {
    // String jsonContent = await rootBundle.loadString("jsonfile/jsonfile.json");
    // print(jsonContent);
    // jsonData = json.decode(jsonContent);
    // print("jsonContent");
    // print(jsonContent);

    // String jsonData =
    //     await rootBundle.loadString('/asset/jsonfile/jsonfile.json');
    // final list = json.decode(jsonData) as List<dynamic>;

    // return list.map((e) => Employee.fromJson(e)).toList();
    //}
  }
}
