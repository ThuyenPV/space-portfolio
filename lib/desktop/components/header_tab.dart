// Dart imports:
import 'dart:html' as html;

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

// Project imports:
import 'package:portfolio/core/screens/experience_portfolio.dart';

class HeaderTab extends StatefulWidget {
  const HeaderTab({Key? key}) : super(key: key);

  @override
  State<HeaderTab> createState() => _HeaderTabState();
}

class _HeaderTabState extends State<HeaderTab> {
  late ValueNotifier<int> _currentTabIndex;

  @override
  void initState() {
    _currentTabIndex = ValueNotifier<int>(0);
    super.initState();
  }

  @override
  void dispose() {
    _currentTabIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        height: kToolbarHeight,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 4),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                html.window.location.reload();
              },
              child: Lottie.asset(
                'assets/json/space.json',
              ),
            ),
            const Spacer(),
            _buildActionItem(
              title: 'Home',
              index: 0,
            ),
            _buildActionItem(
              title: 'About Me',
              index: 1,
            ),
            _buildActionItem(
              title: 'Portfolio',
              index: 2,
            ),
            _buildActionItem(
              title: 'Contact',
              hasBorder: true,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  _buildActionItem({
    required String title,
    required int index,
    bool hasBorder = false,
    GestureTapCallback? onTap,
  }) {
    return GestureDetector(
      onTap: () {
        _currentTabIndex.value = index;
        _headerTabNavigation(index);
      },
      child: ValueListenableBuilder(
        valueListenable: _currentTabIndex,
        builder: (_, int tabSelected, __) {
          return Container(
            height: 56,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 8),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              border: hasBorder
                  ? Border.all(color: Colors.white60, width: 1)
                  : null,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: tabSelected == index
                    ? Colors.white70
                    : const Color(0xff6012A4),
              ),
            ),
          );
        },
      ),
    );
  }

  void _headerTabNavigation(int index) {
    switch (index) {
      case 0:
        html.window.location.reload();
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ExperiencePortfolio()));
        break;
      default:
        break;
    }
  }
}
