import 'package:cafe_app/features/basket/presentation/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';

class MiniIndicator extends StatelessWidget {
  const MiniIndicator({super.key, required this.activeIndex});
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DotIndicator(active: activeIndex == 0),
        const SizedBox(width: 6),
        DotIndicator(active: activeIndex == 1),
      ],
    );
  }
}
