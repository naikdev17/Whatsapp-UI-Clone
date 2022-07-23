import 'package:flutter/material.dart';
import 'chats.dart';
import 'package:mywhatsapp/widgets/bottomui.dart';

class Chatdetail extends StatelessWidget {
  final String profilepic, profilename;
  const Chatdetail(
      {Key? key, required this.profilepic, required this.profilename})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075E54),
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back)),
          title: Row(
            children: [
              CircleAvatar(
                maxRadius: 20,
                backgroundImage: NetworkImage(profilepic),
              ),
              SizedBox(
                width: 10,
              ),
              Text(profilename)
            ],
          ),
        ),
        body: Container(
          child: Stack(children: [
            Positioned(
              bottom: 1,
              child: Image.asset("lib/assets/back.jpg"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 270,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              // ignore: prefer_const_constructors
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                // ignore: prefer_const_constructors
                                child: TextField(
                                  autofocus: false,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: "Type Here",
                                      prefixIcon: Icon(
                                        Icons.emoji_emotions,
                                        color: Colors.grey,
                                      ),
                                      suffixIcon: Icon(
                                        Icons.control_point,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 5),
                              height: 40,
                              child: Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff075E54),
                              ),
                              child: Icon(
                                Icons.send_sharp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
