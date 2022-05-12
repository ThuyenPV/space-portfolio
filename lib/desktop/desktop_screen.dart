// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:portfolio/core/widgets/main_portfolio.dart';

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
