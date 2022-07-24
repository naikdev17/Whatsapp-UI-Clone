import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Cards extends StatelessWidget {
  const Cards(
      {Key? key,
      required this.imageurl,
      required this.name,
      required this.time})
      : super(key: key);

  final String name, imageurl, time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        maxRadius: 25,
        foregroundColor: Colors.grey,
        backgroundImage: NetworkImage(imageurl),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(time),
    );
  }
}
