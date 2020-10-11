import 'package:flutter/material.dart';
import 'package:my_first_app/model/user.dart';
import 'package:my_first_app/widget/user_widget.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _userPageContainer();
  }

  Widget _userPageContainer() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello " + _getUser().name + "!"),
      ),
      backgroundColor: Colors.pink,
      body: UserWidget(_getUser()),
    );
  }

  User _getUser() {
    return User("Mauno",
        "https://crop.kaleva.fi/YMNuETUHznaAPcJWN7KHLlem-_E=/2600x1971/smart/https%3A//lorien-media-prod.s3.amazonaws.com/migration/kalevafi/i/2019/12/05/4516817-r-e54fb.jpg");
  }
}
