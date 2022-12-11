import 'package:flutter/material.dart';

import 'homepage.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                user.avatar,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                user.username,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              user.email,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
