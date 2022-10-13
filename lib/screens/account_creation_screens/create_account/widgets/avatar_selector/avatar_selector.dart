import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moje_miasto/cubits/avatar_selector_cubit.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatars.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/single_person.dart';
import 'package:moje_miasto/screens/account_creation_screens/create_account/widgets/avatar_selector/avatar_selector_texts.dart';

class SelectAvatar extends StatefulWidget {
  const SelectAvatar({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectAvatar> createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void _scroll() {
    _scrollController.animateTo(
      _scrollController.position.extentAfter,
      duration: const Duration(milliseconds: 600),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvatarSelectorCubit, String?>(
      builder: (context, state) {
        final avatarSelectorCubit = context.read<AvatarSelectorCubit>();

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
                      onPressed: _scroll,
                      splashRadius: 16.0,
                      icon: const Icon(
                        FontAwesomeIcons.chevronLeft,
                        size: 16.0,
                      ),
                    ),
                    selectAvatarText(context),
                    IconButton(
                      onPressed: _scroll,
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
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: avatars.length,
                    itemBuilder: (context, index) => SinglePerson(
                      avatarSelectorCubit: avatarSelectorCubit,
                      index: index,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
