import 'package:flutter/material.dart';
import 'package:my_first_app/page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    PageWidget("Home", Colors.orange),
    PageWidget("books", Colors.yellow),
    PageWidget("user", Colors.red)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app!"),
      ),
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
        BottomNavigationBarItem(icon: new Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
            icon: new Icon(Icons.menu_book), label: "books"),
        BottomNavigationBarItem(
            icon: new Icon(Icons.supervised_user_circle), label: "user"),
      ],
    );
  }

  void _onBottomTabTabbed(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
