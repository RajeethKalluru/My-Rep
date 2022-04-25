import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/brand_Detail_Page.dart';
import 'package:flutter_application_1/selected_Category_Page.dart';

class BrandItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  BrandItem(this.id, this.title, this.color);

  void selectBrand(BuildContext context) {
    // Navigator.of(context).pushNamed(
    //   BrandDetailPage.routeName,
    //   arguments: {'id': id, 'title': title},
    // );
    Navigator.of(context).pushNamed(
      SelectedCategoryPage.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectBrand(context),
        splashColor: Theme.of(context).primaryColor,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(title),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.4),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
