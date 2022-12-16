import 'dart:async';

import 'package:watch_app/helpers/debouncer.dart';
import 'package:watch_app/models/idea.dart';

class IdeasProvider {
  final debouncer = Debouncer(duration: const Duration(milliseconds: 300));

  final List<Idea> _suggestionsIdeas = [];

  List<Idea> searchIdeas(String searchTerm) {
    final List<Idea> results = [];
    for (var element in Idea.demoIdeas) {
      if (element.name
          .toLowerCase()
          .startsWith(searchTerm.toString().toLowerCase())) {
        results.add(element);
      }
    }
    return results;
  }

  void getSuggestionsByQuery(String searchTerm) {
    debouncer.value = searchTerm;

    debouncer.onValue = (value) {
      final List<Idea> results = searchIdeas(value);
      _suggestionsIdeas.addAll(results);
    };

    final timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      debouncer.value = searchTerm;
    });

    Future.delayed(const Duration(milliseconds: 101))
        .then((_) => timer.cancel());
  }
}
