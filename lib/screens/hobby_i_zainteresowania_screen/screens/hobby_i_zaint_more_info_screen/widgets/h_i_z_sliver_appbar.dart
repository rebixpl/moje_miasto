import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/h_i_z_appbar.dart';
import 'package:moje_miasto/screens/hobby_i_zainteresowania_screen/screens/hobby_i_zaint_more_info_screen/widgets/h_i_z_flexible_appbar.dart';

class HIZSliverAppBar extends StatelessWidget {
  const HIZSliverAppBar({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xff6A6493),
      // backgroundColor: Colors.transparent,
      title: const HIZAppBar(),
      toolbarHeight: 90,
      forceElevated: true,
      centerTitle: true,
      expandedHeight: 400.0,
      collapsedHeight: 90.0,
      pinned: true,
      elevation: 0.0,
      flexibleSpace: FlexibleSpaceBar(
        background: HIZFlexibleAppBar(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
