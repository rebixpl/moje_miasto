import 'package:flutter/material.dart';
import 'package:moje_miasto/shared/app/text/title_case.dart';

class SchoolTypeSelector extends StatelessWidget {
  const SchoolTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> schoolTypes = [
      'szkoły podstawowe',
      'szkoły ponadpodstawowe',
      'studia',
    ];

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 14.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60,
                alignment: Alignment.center,
                child: Text(
                  schoolTypes[index].allInCaps,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            itemCount: schoolTypes.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 0.0),
          ),
        ),
      ),
    );
  }
}
