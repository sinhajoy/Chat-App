import 'package:flutter/material.dart';
import 'package:my_app/CustomUI/ButtonCard.dart';
import 'package:my_app/CustomUI/ContactCard.dart';
import 'package:my_app/Model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Avijit Samanta",
        status: "CEO",
      ),
      ChatModel(
        name: "Bipin Paul",
        status: "Backend Developer",
      ),
      ChatModel(
        name: "Sunita Samal",
        status: "VP @ Morgan Stanlye",
      ),
      ChatModel(
        name: "Avijit Samanta",
        status: "CEO",
      ),
      ChatModel(
        name: "Bipin Paul",
        status: "Backend Developer",
      ),
      ChatModel(
        name: "Sunita Samal",
        status: "VP @ Morgan Stanlye",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Group",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Add Members",
                style: TextStyle(
                  fontSize: 13,
                )),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 26,
              )),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: ContactCard(
              contact: contacts[index],
            ),
          );
        },
      ),
    );
  }
}
