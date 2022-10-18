class SchoolType {
  final String id;
  final String title;

  const SchoolType({required this.id, required this.title});
}

const List<SchoolType> schoolTypes = [
  SchoolType(id: 'podstawowe', title: 'szkoły podstawowe'),
  SchoolType(id: 'ponadpodstawowe', title: 'szkoły ponadpodstawowe'),
  SchoolType(id: 'studia', title: 'studia'),
];
