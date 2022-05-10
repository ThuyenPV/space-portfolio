import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioAppBar extends StatelessWidget with PreferredSizeWidget {
  const PortfolioAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/title.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      title: Text(
        'Thuyen Pham',
        style: GoogleFonts.actor(
          fontSize: 22,
        ),
      ),
      actions: [
        _buildActionItem(
          title: 'Home',
          color: Colors.yellow,
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
        border: hasBorder ? Border.all(color: Colors.black38, width: 1) : null,
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

  @override
  Size get preferredSize => const Size(0, kToolbarHeight);
}
