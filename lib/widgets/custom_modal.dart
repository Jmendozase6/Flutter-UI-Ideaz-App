import 'package:flutter/material.dart';
import 'package:watch_app/models/models.dart';
import 'package:watch_app/widgets/list_categories_items.dart';
import 'package:watch_app/widgets/list_scroll_items.dart';
import 'package:watch_app/widgets/widgets.dart';

Future<void> showModal(BuildContext context) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: (MediaQuery.of(context).size.height * 0.8),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                // Add new idea
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add new idea',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                // Questions Fields
                const CustomTextFormField(
                    text: 'What do u have in mind?', hintText: 'Name ur idea'),
                const SizedBox(height: 40),
                const CustomTextFormField(
                    text: 'Description', hintText: 'Add details to ur idea'),

                // Share with
                const SizedBox(height: 40),
                const Text(
                  'Share with',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),

                // List Share with

                ListScrollItems(persons: Person.demoPersons),

                const SizedBox(height: 40),
                const Text(
                  'Add to category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),

                // List categories
                ListCategoriesItems(categories: Category.demoCategories),

                const SizedBox(height: 30),
                // Swipe button
                const CustomSwipeButton(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      );
    },
  );
}
