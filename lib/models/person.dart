class Person {
  String nombre;
  String url;

  Person({required this.nombre, required this.url});

  static final List<Person> demoPersons = [
    Person(
        nombre: 'Manuel',
        url:
            'https://elcomercio.pe/resizer/HXzVzw9RiLPXmmAhCRdJCn3FNeA=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/VGEBD2CECFG7PCROHMW6RKYADI.webp'),
    Person(
        nombre: 'Jhair',
        url:
            'https://elcomercio.pe/resizer/HXzVzw9RiLPXmmAhCRdJCn3FNeA=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/VGEBD2CECFG7PCROHMW6RKYADI.webp'),
    Person(
        nombre: 'Jhin',
        url:
            'https://elcomercio.pe/resizer/HXzVzw9RiLPXmmAhCRdJCn3FNeA=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/VGEBD2CECFG7PCROHMW6RKYADI.webp'),
  ];
}
