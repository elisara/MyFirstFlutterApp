import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String title;
  final Color color;

  PageWidget(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return _mainContainer();
  }

  Widget _mainContainer() {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Text(title),
      ),
    );
  }
}
