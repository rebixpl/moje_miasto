import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

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
  Avatar(id: 'avatar5', bgColor: 0xffdbceff),
  Avatar(id: 'avatar6', bgColor: 0xffaff2c2),
  Avatar(id: 'avatar7', bgColor: 0xffffe8a0),
];

class SelectAvatar extends StatelessWidget {
  const SelectAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: const Color(0xff211A4C).withOpacity(0.07),
      elevation: 0.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  splashRadius: 16.0,
                  icon: const Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 16.0,
                  ),
                ),
                _selectAvatarText(context),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16.0,
                  icon: const Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 16.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: avatars.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      debugPrint(
                          'avatar ${avatars[0].id} has been just tapped');
                    },
                    borderRadius: BorderRadius.circular(30.0),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.3),
                        radius: 32.0,
                        child: CircleAvatar(
                          backgroundColor: Color(avatars[0].bgColor),
                          radius: 30.0,
                          child: Image.asset(
                              'images/screens/create_account/avatar_selector/${avatars[0].id}.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text _selectAvatarText(BuildContext context) {
    return Text(
      'wybierz awatar'.titleCase,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontWeight: FontWeight.bold,
        fontSize: 17.0,
      ),
    );
  }
}
