import 'package:flutter/material.dart';
import 'package:mywhatsapp/model/calls.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Divider(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(callData[index].imageUrl),
              ),
              title: Text(
                callData[index].name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  callData[index].time,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              trailing: Icon(
                Icons.call_rounded,
                color: Color(0xff075E54),
              ),
            ),
          ],
        );
      },
    );
  }
}
