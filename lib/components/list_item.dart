import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imgFilme;

  const ListItem({
    Key? key,
    required this.imgFilme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 150,
      height: 300,
      child: Image(
        image: AssetImage(imgFilme),
        fit: BoxFit.fill,
      ),
    );
  }
}
