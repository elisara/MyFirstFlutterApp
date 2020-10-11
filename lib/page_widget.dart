import 'package:flutter/material.dart';
import 'package:my_first_app/page/book_page.dart';
import 'package:my_first_app/page/home_page.dart';
import 'package:my_first_app/page/user_page.dart';
import 'constants.dart' as Constants;

class PageWidget extends StatelessWidget {
  final String id;

  PageWidget(this.id);

  @override
  Widget build(BuildContext context) {
    return _mainContainer();
  }

  Widget _mainContainer() {
    return Scaffold(
      body: Center(
        child: _getSelectedPageById(id),
      ),
    );
  }

  Widget _getSelectedPageById(String id) {
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
