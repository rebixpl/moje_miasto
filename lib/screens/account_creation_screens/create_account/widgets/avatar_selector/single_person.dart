import 'package:flutter/material.dart';
import 'package:moje_miasto/cubits/avatar_selector_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';

class SinglePerson extends StatelessWidget {
  const SinglePerson({
    Key? key,
    required this.avatarSelectorCubit,
    required this.index,
  }) : super(key: key);

  final AvatarSelectorCubit avatarSelectorCubit;
  final int index;

  @override
  Widget build(BuildContext context) {
    final String selectedAvatarId = avatarSelectorCubit.state!;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: InkWell(
        onTap: () {
          debugPrint('avatar ${avatars[index].id} has been just tapped');
          avatarSelectorCubit.setNewId(avatars[index].id);
        },
        borderRadius: BorderRadius.circular(30.0),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundColor: selectedAvatarId == avatars[index].id
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            radius: 32.0,
            child: CircleAvatar(
              backgroundColor: Color(avatars[index].bgColor),
              radius: 30.0,
              child: Image.asset(
                  'images/screens/create_account/avatar_selector/${avatars[index].id}.png'),
            ),
          ),
        ),
      ),
    );
  }
}
