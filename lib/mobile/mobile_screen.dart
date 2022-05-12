// Flutter imports:
import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/main_portfolio.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainPortfolio(),
    );
  }
}
