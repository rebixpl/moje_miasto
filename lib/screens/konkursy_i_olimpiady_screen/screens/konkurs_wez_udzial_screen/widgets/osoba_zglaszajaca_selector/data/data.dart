class OsobaZglaszajaca {
  final String id;
  final String title;

  const OsobaZglaszajaca({
    required this.id,
    required this.title,
  });
}

enum OsobyZglaszajaceEnum {
  nauczyciel_ka,
  uczen_uczennica,
}

const List<OsobaZglaszajaca> osobyZglaszajace = [
  OsobaZglaszajaca(id: 'nauczyciel_ka', title: 'Nauczyciel/ka'),
  OsobaZglaszajaca(id: 'uczen_uczennica', title: 'Uczeń / Uczennica'),
];
