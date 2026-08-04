import 'package:flutter/material.dart';
import 'statistic_item.dart';

class StatisticsRow extends StatelessWidget {
  const StatisticsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        StatisticItem(
          value: "248",
          label: "Posts",
        ),

        StatisticItem(
          value: "12.4K",
          label: "Followers",
        ),

        StatisticItem(
          value: "1.2K",
          label: "Following",
        ),
      ],
    );
  }
}