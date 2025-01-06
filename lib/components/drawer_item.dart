import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String? text;
  final VoidCallback onTap;

  const DrawerItem({
    Key? key,
    required this.icon,
    this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text!,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
