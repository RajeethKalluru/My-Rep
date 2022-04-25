import 'package:flutter/material.dart';

class Brand {
  final String id;
  final String title;
  final Color color;

  const Brand({
    required this.id,
    required this.title,
    this.color = Colors.green,
  });
}
