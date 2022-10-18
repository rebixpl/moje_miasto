import 'package:flutter/material.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/school_ranking_appbar.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/widgets/school_ranking_flexible_appbar.dart';

class SRSliverAppBarWidget extends StatelessWidget {
  const SRSliverAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: const SchoolRankingAppBar(),
      forceElevated: true,
      centerTitle: true,
      expandedHeight: 400.0,
      collapsedHeight: 70.0,
      pinned: true,
      elevation: 0.0,
      flexibleSpace: const FlexibleSpaceBar(
        background: SchoolRankingFlexibleAppBar(),
      ),
    );
  }
}
