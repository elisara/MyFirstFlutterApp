import 'package:flutter/material.dart';

class User {
  final String name;
  final String imageUrl;

  User(this.name, this.imageUrl);
}

class UserWidget extends StatelessWidget {
  final User user;

  UserWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return _userContainer();
  }

  Widget _userContainer() {
    return Center(
        child: Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 50),
            width: 190.0,
            height: 190.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(user.imageUrl),
                ))),
        Text(user.name),
      ],
    ));
  }
}
