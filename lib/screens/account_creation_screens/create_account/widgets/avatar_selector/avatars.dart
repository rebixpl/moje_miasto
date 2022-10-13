class Avatar {
  final String id;
  final int bgColor;
  const Avatar({required this.id, required this.bgColor});
}

const List<Avatar> avatars = [
  Avatar(id: 'avatar1', bgColor: 0xffaff2c2),
  Avatar(id: 'avatar2', bgColor: 0xffdbceff),
  Avatar(id: 'avatar3', bgColor: 0xffffe8a0),
  Avatar(id: 'avatar4', bgColor: 0xffffbece),
  Avatar(id: 'avatar1', bgColor: 0xffdbceff),
  Avatar(id: 'avatar3', bgColor: 0xffaff2c2),
  Avatar(id: 'avatar2', bgColor: 0xffffe8a0),
];
