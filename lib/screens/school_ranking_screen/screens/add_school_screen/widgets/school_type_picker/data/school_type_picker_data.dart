class SchoolType {
  final String id;
  final String title;

  const SchoolType({
    required this.id,
    required this.title,
  });
}

const List<SchoolType> schoolTypes = [
  SchoolType(
    id: 'szkoly_podstawowe',
    title: 'szkoły podstawowe',
  ),
  SchoolType(
    id: 'szkoly_ponadpodstawowe',
    title: 'szkoły ponadpodstawowe',
  ),
  SchoolType(
    id: 'studenci',
    title: 'studenci',
  ),
];
