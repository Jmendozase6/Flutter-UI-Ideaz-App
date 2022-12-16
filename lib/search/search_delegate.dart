import 'package:flutter/material.dart';

import 'package:watch_app/models/models.dart';
import 'package:watch_app/provider/ideas_provider.dart';

import 'package:watch_app/widgets/widgets.dart';

class CustomSearchDelegate extends SearchDelegate {

  List<Idea> ideas = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (ideas.isEmpty) {
      return const _EmptyContainer();
    }
    return _ResultsScreen(ideas: ideas);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const _ResultsScreen(ideas: []);
    }

    IdeasProvider idea = IdeasProvider();
    idea.getSuggestionsByQuery(query);
    ideas = IdeasProvider().searchIdeas(query);

    if (ideas.isEmpty) {
      return const _EmptyContainer();
    }
    return _ResultsScreen(ideas: ideas);
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
      appBarTheme: super.appBarTheme(context).appBarTheme.copyWith(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }

}

class _EmptyContainer extends StatelessWidget {
  const _EmptyContainer();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'No results found',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 20),
          Image(
            height: 150,
            width: 150,
            image: AssetImage('assets/images/empty-box.png'),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class _ResultsScreen extends StatelessWidget {
  const _ResultsScreen({required this.ideas});

  final List<Idea> ideas;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListIdeas(ideas: ideas),
      ],
    );
  }
}
