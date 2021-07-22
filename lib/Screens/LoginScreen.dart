import 'package:flutter/material.dart';
import 'package:my_app/Model/ChatModel.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Joy Sinha",
        icon: "person.svg",
        isGroup: false,
        time: "10.00",
        currentMessage: "Hey JOY",
        id: 1),
    ChatModel(
        name: "Debjyoti Das",
        icon: "person.svg",
        isGroup: false,
        time: "03.00",
        currentMessage: "Hey Buddy",
        id: 2),
    // ChatModel(
    //     name: "Final Year Project",
    //     icon: "groups.svg",
    //     isGroup: true,
    //     time: "08.00",
    //     currentMessage: "Hey My groups"),
    ChatModel(
        name: "Avijit Samanta",
        icon: "person.svg",
        isGroup: false,
        time: "03.00",
        currentMessage: "Hey Joy, Work hard",
        id: 3),
    ChatModel(
        name: "Maa",
        icon: "person.svg",
        isGroup: false,
        time: "04.00",
        currentMessage: "hi Beta",
        id: 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
