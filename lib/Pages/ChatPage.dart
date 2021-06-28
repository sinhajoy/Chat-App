import 'package:flutter/material.dart';
import 'package:my_app/CustomUI/CustomCard.dart';
import 'package:my_app/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Joy Sinha",
        icon: "person.svg",
        isGroup: false,
        time: "10.00",
        currentMessage: "Hey JOY"),
    ChatModel(
        name: "Debjyoti Das",
        icon: "person.svg",
        isGroup: false,
        time: "03.00",
        currentMessage: "Hey Buddy"),
    ChatModel(
        name: "Final Year Project",
        icon: "groups.svg",
        isGroup: true,
        time: "08.00",
        currentMessage: "Hey My groups"),
    ChatModel(
        name: "Avijit Samanta",
        icon: "person.svg",
        isGroup: false,
        time: "03.00",
        currentMessage: "Hey Joy, Work hard"),
    ChatModel(
        name: "Maa",
        icon: "person.svg",
        isGroup: false,
        time: "04.00",
        currentMessage: "hi Beta")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
