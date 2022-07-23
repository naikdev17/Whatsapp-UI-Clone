import 'package:flutter/material.dart';
import 'package:mywhatsapp/model/chat.dart';
import 'package:mywhatsapp/screens/chatdetail.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Divider(height: 20),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  maxRadius: 25,
                  backgroundImage: NetworkImage(messageData[index].imageUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      messageData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      messageData[index].time,
                      style: TextStyle(color: Colors.grey[500], fontSize: 16),
                    )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(messageData[index].message),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Chatdetail(
                            profilepic: messageData[index].imageUrl.toString(),
                            profilename: messageData[index].name,
                          )));
                },
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff25D366),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
