class HelpType {
  final String id;
  final String title;

  const HelpType({required this.id, required this.title});
}

enum HelpTypesEnum {
  szukamPomocy,
  udzielamPomocy,
}

const List<HelpType> helpTypes = [
  HelpType(id: 'szukam_pomocy', title: 'szukam pomocy'),
  HelpType(id: 'udzielam_pomocy', title: 'chcę udzielić pomocy'),
];
