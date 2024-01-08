import 'package:projet_cours/list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function() onProfileTap;
  final void Function() onSkillsTap;
  final void Function() onSignOut;
  const MyDrawer(
      {super.key, required this.onProfileTap, required this.onSignOut, required this.onSkillsTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                  child: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
                size: 64,
              )),
              ListTileDrawer(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.pop(context),
              ),
              ListTileDrawer(
                icon: Icons.person,
                text: 'Profile',
                onTap: onProfileTap,
              ),
              ListTileDrawer(
                icon: Icons.stacked_line_chart_outlined,
                text: 'Skills',
                onTap: onSkillsTap,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ListTileDrawer(
              icon: Icons.logout,
              text: 'Logout',
              onTap: onSignOut,
            ),
          )
        ],
      ),
    );
  }
}