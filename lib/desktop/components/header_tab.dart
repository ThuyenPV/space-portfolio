import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HeaderTab extends StatelessWidget {
  const HeaderTab({Key? key}) : super(key: key);

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
            Text(
              'Wiliam',
              style: GoogleFonts.actor(
                fontSize: 22,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.asset(
              'assets/json/space.json',
            ),
            const Spacer(),
            _buildActionItem(
              title: 'Home',
              color: Colors.white70,
            ),
            _buildActionItem(
              title: 'About Me',
              color: const Color(0xff6012A4),
            ),
            _buildActionItem(
              title: 'Portfolio',
              color: const Color(0xff6012A4),
            ),
            _buildActionItem(
              title: 'Contact',
              color: const Color(0xff6012A4),
              hasBorder: true,
            ),
          ],
        ),
      ),
    );
  }

  _buildActionItem({
    required String title,
    required Color color,
    bool hasBorder = false,
  }) {
    return Container(
      height: 56,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 46, top: 8, bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        border: hasBorder ? Border.all(color: Colors.white60, width: 1) : null,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
