class ChatModel {
  String name;
  String status;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  bool select = false;
  int id = 0;

  ChatModel(
      {this.name = "Default",
      this.status = "Available",
      this.icon = "person",
      this.isGroup = false,
      this.time = "10.00 PM",
      this.currentMessage = "bAM VOLE",
      this.select = false,
      this.id = 0});
}
