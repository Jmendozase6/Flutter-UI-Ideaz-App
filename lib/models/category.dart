import 'package:flutter/material.dart';

class Category {
  // Propierties
  Color color;
  IconData iconData;
  String name;

  // Constructor
  Category(this.color, this.iconData, this.name);

  static final List<Category> demoCategories = [
    Category(const Color(0XFF33AA9E), Icons.person, 'Personal'),
    Category(const Color(0XFF3BA3FF), Icons.group, 'Family'),
    Category(const Color(0XFFBF8FFF), Icons.work, 'Work'),
    Category(const Color(0XFFED975E), Icons.adjust, 'Settings'),
    Category(const Color(0XFFF86199), Icons.sunny, 'Summer'),
  ];

  static getDemoCategories(int index) => demoCategories[index];
}
