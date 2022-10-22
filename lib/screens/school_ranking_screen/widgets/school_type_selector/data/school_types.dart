class SchoolType {
  final String id;
  final String title;

  const SchoolType({required this.id, required this.title});
}

enum SchoolTypesEnum {
  podstawowe,
  ponadpodstawowe,
  studia,
}

const List<SchoolType> schoolTypesSelectorList = [
  SchoolType(id: 'podstawowe', title: 'szkoły podstawowe'),
  SchoolType(id: 'ponadpodstawowe', title: 'szkoły ponadpodstawowe'),
  SchoolType(id: 'studia', title: 'studia'),
];
