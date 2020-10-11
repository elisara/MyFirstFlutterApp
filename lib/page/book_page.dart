import 'package:flutter/material.dart';
import 'package:my_first_app/model/book.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _bookPageContainer();
  }

  Widget _bookPageContainer() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book page!"),
      ),
      backgroundColor: Colors.blue,
      body: BookListLayout(_createBookList()),
    );
  }

  List<Book> _createBookList() {
    return [
      Book(
          "title",
          "desctiption",
          Image.network(
              "https://images.indianexpress.com/2020/04/books_1200.jpg")),
      Book(
          "title2",
          "desctiption2",
          Image.network(
              "https://assets.entrepreneur.com/content/3x2/2000/20191219170611-GettyImages-1152794789.jpeg")),
      Book(
          "title3",
          "desctiption3",
          Image.network(
              "https://thumbs-prod.si-cdn.com/ufPRE9RHUDHqQdOsLvYHhJAxy1k=/fit-in/1600x0/https://public-media.si-cdn.com/filer/91/91/91910c23-cae4-46f8-b7c9-e2b22b8c1710/lostbook.jpg")),
    ];
  }
}
