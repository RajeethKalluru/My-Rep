import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/tempData.dart';
import './tempData.dart';

class SelectedCategoryPage extends StatelessWidget {
  static const routeName = '/selected-Category';

  SelectedCategoryPage();
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final brandId = routeArgs['id'];
    final brandTitle = routeArgs['title'];
    final electronicsInfo = ELECTRONICS_DATA.where((product) {
      return product.brands.contains(brandId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(brandTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(electronicsInfo[index].title);
        },
        itemCount: electronicsInfo.length,
      ),
    );
  }
}
