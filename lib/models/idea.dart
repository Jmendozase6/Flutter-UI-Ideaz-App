class Idea {
  Idea({
    required this.name,
    required this.description,
    required this.complete,
    required this.date,
    required this.categorie,
  });

  String name;
  String description;
  bool complete;
  String date;
  int categorie;
  // Categorie

  static final List<Idea> demoIdeas = [
    Idea(
        name: 'Brainstorm company name',
        description: 'Brainstorm company descripcion',
        complete: false,
        date: 'May 25, 21:36',
        categorie: 1),
    Idea(
        name: 'Next City Break',
        description: 'Next City Break descripcion',
        complete: true,
        date: 'May 14, 21:36',
        categorie: 4),
    Idea(
        name: 'Sunday Outfit ideas',
        description: 'Summer Outfit ideas descripcion',
        complete: true,
        date: 'May 20, 21:36',
        categorie: 2),
    Idea(
        name: 'How to engage customers?',
        description: 'How to engage customers descripcion',
        complete: false,
        date: 'May 18, 21:36',
        categorie: 3),
    Idea(
        name: 'Transformate company name',
        description: 'Brainstorm company descripcion',
        complete: true,
        date: 'May 25, 21:36',
        categorie: 0),
    Idea(
        name: 'TBH City Break',
        description: 'Next City Break descripcion',
        complete: true,
        date: 'May 14, 21:36',
        categorie: 1),
    Idea(
        name: 'Omw Outfit ideas',
        description: 'Summer Outfit ideas descripcion',
        complete: true,
        date: 'May 20, 21:36',
        categorie: 2),
    Idea(
        name: 'How to engage customers?',
        description: 'How to engage customers descripcion',
        complete: false,
        date: 'May 18, 21:36',
        categorie: 0),
  ];
}
