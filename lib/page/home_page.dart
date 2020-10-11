import 'dart:collection';

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
      backgroundColor: Colors.white,
      body: _mapContainer(),
    );
  }

  Widget _mapContainer() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          child: Text("Hi there! Welcome to my first flutter app!"),
        ),
      ],
    );
  }
}
