import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _homePageContainer();
  }

  Widget _homePageContainer() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page!"),
      ),
      backgroundColor: Colors.green,
    );
  }
}
