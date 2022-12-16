import 'package:flutter/material.dart';
import 'package:watch_app/search/search_delegate.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showSearch(context: context, delegate: CustomSearchDelegate());
      },
      child: const Text(
        'Search Ideas',
        style: TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}
