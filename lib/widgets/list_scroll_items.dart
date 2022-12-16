import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/widgets.dart';

class ListScrollItems extends StatelessWidget {
  const ListScrollItems({
    required this.persons,
    Key? key,
  }) : super(key: key);

  final List<Person> persons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: persons.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          children: [
            ContinuousContainer(
              height: 50,
              width: 50,
              border: 20,
              child: Image(
                image: NetworkImage(persons[index].url),
              ),
            ),
            if (index == persons.length - 1)
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
