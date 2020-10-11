import 'package:flutter/material.dart';

class Book {
  final String title;
  final String desctiption;
  final Image image;

  Book(this.title, this.desctiption, this.image);
}

class BookListLayout extends StatelessWidget {
  final List<Book> bookList;

  BookListLayout(this.bookList);

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
