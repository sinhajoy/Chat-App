import 'package:flutter/material.dart';
import 'package:my_app/CustomUI/ButtonCard.dart';
import 'package:my_app/CustomUI/ContactCard.dart';
import 'package:my_app/Model/ChatModel.dart';
import 'package:my_app/Screens/CreateGroup.dart';

class SelectContact extends StatefulWidget {
  SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
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
              "Select Contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("256 Contacts",
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
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Invite a Friend"),
                  value: "Invite a Friend",
                ),
                PopupMenuItem(
                  child: Text("Contacts"),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text("Help"),
                  value: "Help",
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => CreateGroup()));
              },
              child: ButtonCard(
                icon: Icons.group,
                name: "New Group",
              ),
            );
          } else if (index == 1) {
            return ButtonCard(icon: Icons.person_add, name: "New Contact");
          }
          return ContactCard(
            contact: contacts[index - 2],
          );
        },
      ),
    );
  }
}
