import 'package:flutter/material.dart';
import 'package:watch_app/models/category.dart';
import 'package:watch_app/widgets/widgets.dart';

class DemoCategorie extends StatelessWidget {
  const DemoCategorie({
    Key? key,
    required this.categorie,
    required this.showName,
    required this.border,
    required this.size,
  }) : super(key: key);

  final Category categorie;
  final bool showName;
  final double size;
  final double border;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContinuousContainer(
          height: size,
          width: size,
          border: border,
          color: categorie.color,
          child: Icon(
            categorie.iconData,
            color: Colors.white,
            size: size / 2.5,
          ),
        ),
        if (showName) const SizedBox(height: 10),
        if (showName) Text(categorie.name),
      ],
    );
  }
}
