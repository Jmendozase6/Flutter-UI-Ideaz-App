import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/widgets.dart';

class ListIdeas extends StatelessWidget {
  const ListIdeas({super.key, required this.ideas});

  // List
  final List<Idea> ideas;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
          itemCount: ideas.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(ideas[index].name),
            subtitle: Text(ideas[index].date),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: ideas[index].complete
                        ? const Color(0XFF33AA9E)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ideas[index].complete
                          ? Colors.black.withOpacity(0)
                          : Colors.grey,
                      width: 0.7,
                    ),
                  ),
                ),
              ],
            ),
            trailing: ContinuousContainer(
              height: 40,
              width: 40,
              border: 10,
              child: DemoCategorie(
                categorie: Category.getDemoCategories(ideas[index].categorie),
                showName: false,
                size: 40,
                border: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
