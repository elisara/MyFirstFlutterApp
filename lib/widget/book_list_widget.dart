import 'package:flutter/material.dart';
import 'package:my_first_app/model/book.dart';

class BookListWidget extends StatelessWidget {
  final List<Book> bookList;

  BookListWidget(this.bookList);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookLayout(bookList[index]);
        });
  }
}

class BookLayout extends StatelessWidget {
  final Book book;

  BookLayout(this.book);

  @override
  Widget build(BuildContext context) {
    return _bookContainer();
  }

  Widget _bookContainer() {
    return Container(
      child: Column(
        children: [
          book.image,
          Text(book.title),
          Text(book.desctiption),
        ],
      ),
    );
  }
}
