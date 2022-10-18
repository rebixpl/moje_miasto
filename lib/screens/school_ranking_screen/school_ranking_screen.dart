import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/rounded_corners_adapter.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/school_type_selector/school_type_selector.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/single_school/single_school.dart';
import 'package:moje_miasto/screens/school_ranking_screen/widgets/sr_sliver_appbar/sr_sliver_appbar.dart';

class SchoolRankingScreen extends StatelessWidget {
  const SchoolRankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectBloc(),
      child: Scaffold(
        body: CustomScrollView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SRSliverAppBarWidget(),
            const RoundedCornersAdapter(),
            const SchoolTypeSelector(),
            SliverFixedExtentList(
              itemExtent: 180,
              delegate: SliverChildBuilderDelegate(
                (context, index) => const SingleSchool(),
                childCount: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
