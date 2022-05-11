import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'I\'m a mobile developer with over 1.5 years of experience in Flutter Framework technologies, with good knowledge of Object-Oriented Analysis and Design, Database Design. Learning new languages and technologies is what I am passionate about.\nI am considered a team-player because I like to help other and tend to work well within the group.',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 16,
                                  height: 1.75,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xffc37885),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                _socialButton(
                                  url: 'https://github.com/ThuyenPV',
                                  text: 'Github',
                                ),
                                _socialButton(
                                  url:
                                      'https://www.linkedin.com/in/thuyen-pham-05447516b/',
                                  text: 'Linkedin',
                                ),
                                _socialButton(
                                  url: 'https://twitter.com/ThuynPhm5',
                                  text: 'Twitter',
                                ),
                              ],
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

  TextButton _socialButton({
    required String url,
    required String text,
  }) {
    return TextButton(
      onPressed: () {
        _launchUrl(url);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }
}
