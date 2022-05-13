// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:portfolio/core/widgets/experience_description.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: MainPortfolio(),
      ),
    );
  }
}
