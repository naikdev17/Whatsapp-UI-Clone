import 'package:flutter/material.dart';
import 'package:mywhatsapp/widgets/cards.dart';
import 'package:mywhatsapp/model/chat.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Cards(
            imageurl: messageData[0].imageUrl,
            name: "My Status",
            time: "Tap To Add Status"),
        Divider(),
        Heading(heading: "Recent Updates"),
        Cards(
            imageurl: messageData[1].imageUrl,
            name: messageData[1].name,
            time: messageData[1].time),
        Cards(
            imageurl: messageData[2].imageUrl,
            name: messageData[2].name,
            time: messageData[2].time),
        Cards(
            imageurl: messageData[3].imageUrl,
            name: messageData[3].name,
            time: messageData[3].time),
        Heading(heading: "Today"),
        Cards(
            imageurl: messageData[4].imageUrl,
            name: messageData[4].name,
            time: messageData[4].time),
        Cards(
            imageurl: messageData[5].imageUrl,
            name: messageData[5].name,
            time: messageData[5].time),
        Cards(
            imageurl: messageData[6].imageUrl,
            name: messageData[6].name,
            time: messageData[6].time),
        Cards(
            imageurl: messageData[7].imageUrl,
            name: messageData[7].name,
            time: messageData[7].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.heading}) : super(key: key);
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5),
      child: Text(
        heading,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}
