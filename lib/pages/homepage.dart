import 'package:flutter/material.dart';

import '../components/drawer.dart';
import 'profile.dart';
import 'skills.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
          child: MyDrawer(
        onProfileTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePage()));
        },
        onSkillsTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SkillsPage()));
        },
        onSignOut: () {},
      )),
      body: Container(),
    );
  }
}
