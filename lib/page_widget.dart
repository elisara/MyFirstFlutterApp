import 'package:flutter/material.dart';
import 'package:my_first_app/page/book_page.dart';
import 'package:my_first_app/page/home_page.dart';
import 'package:my_first_app/page/user_page.dart';
import 'constants.dart' as Constants;

class PageWidget extends StatelessWidget {
  final String id;
  final Color color;

  PageWidget(this.id, this.color);

  @override
  Widget build(BuildContext context) {
    return _mainContainer();
  }

  Widget _mainContainer() {
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: _getSelecedPageById(id),
      ),
    );
  }

  Widget _getSelecedPageById(String id) {
    print(id);
    if (id == Constants.ID_PAGE_HOME) {
      return HomePage();
    } else if (id == Constants.ID_PAGE_BOOKS) {
      return BookPage();
    } else {
      return UserPage();
    }
  }
}
