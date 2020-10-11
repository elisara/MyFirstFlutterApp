import 'package:flutter/material.dart';
import 'package:my_first_app/page_widget.dart';
import 'constants.dart' as Constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      theme: ThemeData(
        //Must be Material color
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final List<PageWidget> _pages = [
    PageWidget(Constants.ID_PAGE_HOME),
    PageWidget(Constants.ID_PAGE_BOOKS),
    PageWidget(Constants.ID_PAGE_USER)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(),
      body: _pages[currentIndex],
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: _onBottomTabTabbed,
      fixedColor: Colors.red,
      items: [
        BottomNavigationBarItem(
            icon: new Icon(Icons.home), label: Constants.NAV_TITLE_HOME),
        BottomNavigationBarItem(
            icon: new Icon(Icons.menu_book), label: Constants.NAV_TITLE_BOOKS),
        BottomNavigationBarItem(
            icon: new Icon(Icons.supervised_user_circle),
            label: Constants.NAV_TITLE_USER),
      ],
    );
  }

  void _onBottomTabTabbed(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
