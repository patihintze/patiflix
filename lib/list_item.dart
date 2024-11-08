import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String img;

  const ListItem({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(2),
            width: 150,
            height: 300,
            child: 
            Image(image: AssetImage(img), fit: BoxFit.fill,),
          );
  }
}