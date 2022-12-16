import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/widgets.dart';

class ListCategoriesItems extends StatelessWidget {
  const ListCategoriesItems({
    required this.categories,
    Key? key,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            ContinuousContainer(
              height: 50,
              width: 50,
              border: 20,
              child: DemoCategorie(
                categorie: categories[index],
                showName: false,
                size: 50,
                border: 10,
              ),
            ),
            if (index == categories.length - 1)
              Row(
                children: const [
                  AddShareWithPerson(),
                ],
              ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
