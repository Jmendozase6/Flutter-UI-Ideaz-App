import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/widgets.dart';

class ListCategories extends StatelessWidget {
  // Lista de categorías
  final List<Category> categories = Category.demoCategories;

  ListCategories({
    super.key,
    required this.height,
    required this.width,
    required this.size,
    this.showName,
    required this.border,
  });

  final double height;
  final double width;
  final double size;
  final bool? showName;
  final double border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Row(
          children: [
            DemoCategorie(
              categorie: categories[index],
              showName: showName ?? true,
              size: size,
              border: border,
            ),
            const SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}
