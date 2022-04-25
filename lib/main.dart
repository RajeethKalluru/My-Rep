import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Categories.dart';
import 'package:flutter_application_1/Employee.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:flutter_application_1/brand_Detail_Page.dart';
import 'package:flutter_application_1/selected_Category_Page.dart';
import './Categories.dart';
import './brand_Detail_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Categories(),
      initialRoute: '/',
      routes: {
        Categories.routeName: (context) => Categories(),
        BrandDetailPage.routeName: (context) => BrandDetailPage(),
        SelectedCategoryPage.routeName: (context) => SelectedCategoryPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          //data.data as List<Employee>;
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
                        width: 100,
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

  Future<List<Employee>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('jsonfile/sample1.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => Employee.fromJson(e)).toList();
  }
}
