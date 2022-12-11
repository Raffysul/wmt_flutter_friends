import 'package:flutter/material.dart';
import 'package:wmt_flutter_friends/userpage.dart';

class User {
  final String username;
  final String email;
  final String avatar;

  const User({
    required this.username,
    required this.email,
    required this.avatar,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = [
    const User(
        username: 'Adetomiwa Johnson',
        email: 'adejohn23@gmail.com',
        avatar: 'assets/images/bestfriend4.png'),
    const User(
        username: 'Paul Steven',
        email: 'steve02@gmail.com',
        avatar: 'assets/images/bestfriend.png'),
    const User(
        username: 'Charity Ohikhuare',
        email: 'princess_love@gmail.com',
        avatar: 'assets/images/bestfriend4.png'),
    const User(
        username: 'Mayowa Agboola',
        email: 'mayo_darl37@gmail.com',
        avatar: 'assets/images/bestfriend7.png'),
    const User(
        username: 'Alaran Ololade',
        email: 'ololadealaran06@gmail.com',
        avatar: 'assets/images/bestfriend5.png'),
    const User(
        username: 'Gbeliho Grace',
        email: 'gracedivine37@gmail.com',
        avatar: 'assets/images/bestfriend4.png'),
    const User(
        username: 'Felix Ajah',
        email: 'ajahfelix01@gmail.com',
        avatar: 'assets/images/bestfriend3.png'),
    const User(
        username: 'Abdul-Kareem Awau',
        email: 'awaukareem45@gmail.com',
        avatar: 'assets/images/bestfriend7.png'),
    const User(
        username: 'Azeezat Adeoye',
        email: 'azeezatadeoye@gmail.com',
        avatar: 'assets/images/bestfriend5.png'),
    const User(
        username: 'Bilikis Olorire',
        email: 'bilbosul@gmail.com',
        avatar: 'assets/images/bestfriend6.png'),
    const User(
        username: 'Obinna Nwachukwu',
        email: 'obinnachukwu@gmail.com',
        avatar: 'assets/images/bestfriend2.png'),
    const User(
        username: 'Alagbe-Shehu Taofeek',
        email: 'alagbeshehu@gmail.com',
        avatar: 'assets/images/bestfriend1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Friends'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text('Add Name'),
        backgroundColor: Colors.green,
        hoverColor: Colors.amberAccent,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(user.avatar),
                ),
                title: Text(user.username),
                subtitle: Text(user.email),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(user: user),
                  ));
                },
              ),
            );
          }),
    );
  }
}
