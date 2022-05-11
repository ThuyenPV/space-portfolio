import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'components/header_tab.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Lottie.asset(
                      'assets/json/stars.json',
                      fit: BoxFit.cover,
                      repeat: true,
                      reverse: false,
                    ),
                  ),
                  const HeaderTab(),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 4,
                    left: 140,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hy! I Am',
                              style: GoogleFonts.modak(
                                fontSize: 32,
                                color: const Color(0xffc37885),
                              ),
                            ),
                            Text(
                              'Thuyen Pham',
                              style: GoogleFonts.modak(
                                fontSize: 32,
                                color: const Color(0xffc37885),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
