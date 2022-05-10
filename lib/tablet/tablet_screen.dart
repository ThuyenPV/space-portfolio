import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
