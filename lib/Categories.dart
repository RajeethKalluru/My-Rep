import 'package:flutter/material.dart';
import './tempData.dart';
import './brand_Item.dart';

class Categories extends StatelessWidget {
  static const routeName = '/Categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MyBrands'),
        ),
        body: GridView(
          children: TEMP_DATA
              .map((brandData) =>
                  BrandItem(brandData.id, brandData.title, brandData.color))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
        ));
  }
}
