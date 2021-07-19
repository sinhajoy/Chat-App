import 'package:flutter/material.dart';
import 'package:my_app/CustomUI/AvtarCard.dart';
import 'package:my_app/CustomUI/ButtonCard.dart';
import 'package:my_app/CustomUI/ContactCard.dart';
import 'package:my_app/Model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groups.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  if (contacts[index - 1].select == true) {
                    setState(() {
                      groups.remove(contacts[index - 1]);
                      contacts[index - 1].select = false;
                    });
                  } else {
                    setState(() {
                      groups.add(contacts[index - 1]);
                      contacts[index - 1].select = true;
                    });
                  }
                },
                child: ContactCard(
                  contact: contacts[index - 1],
                ),
              );
            },
          ),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                child: AvtarCard(
                                  contact: contacts[index],
                                ),
                                onTap: () {
                                  setState(() {
                                    groups.remove(contacts[index]);
                                    contacts[index].select = false;
                                  });
                                },
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
