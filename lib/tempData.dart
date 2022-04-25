//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/brand.dart';
import 'package:flutter_application_1/models/electronics.dart';
import './models/brand.dart';
import './models/electronics.dart';

const TEMP_DATA = const [
  Brand(id: 'cat1', title: 'Electronics', color: Colors.blueAccent),
  Brand(id: 'cat2', title: 'Fashion', color: Colors.green),
  Brand(id: 'cat3', title: 'Baby&Kids ', color: Colors.orangeAccent),
  Brand(id: 'cat4', title: 'Women ', color: Colors.grey),
];

const ELECTRONICS_DATA = const [
  Electronics(
      brands: ['Apple', 'Samsung', 'MI', 'cat1'],
      imageUrl: 'imageUrl',
      id: 'ele1',
      title: 'iPhone'),
  Electronics(
      id: 'ele2',
      brands: ['Apple', 'Samsung', 'MI', 'cat2'],
      title: 'Appearel',
      imageUrl: 'imageUrl'),
  Electronics(
      id: 'ele3',
      brands: ['Apple', 'Samsung', 'MI', 'cat1'],
      title: 'Realme',
      imageUrl: 'imageUrl'),
];

const BRAND_DATA = const [
  Brand(id: 'Apple', title: 'iPhone'),
  Brand(id: 'Samsung', title: 'Galaxy'),
  Brand(id: 'Apple', title: 'iPad'),
  Brand(id: 'Oppo', title: 'Realme')
];
