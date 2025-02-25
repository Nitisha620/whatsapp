import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> dummyData = [
    ChatModel(name: "Me(You)", message: "Blah Blah", time: "2/21/25"),
    ChatModel(name: "Hritik", message: "Okaysss", time: "22:59"),
    ChatModel(name: "Sab log", message: "Blah Blah", time: "2/21/25"),
    ChatModel(name: "Sheli💀", message: "Blah Blah", time: "2/21/25"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, position) {
          return Column(
            children: [
              const Divider(),
              ListTile(
                leading: const CircleAvatar(),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dummyData[position].name ?? "",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[position].time ?? "-",
                      style: TextStyle(fontSize: 11, color: Colors.grey[900]),
                    )
                  ],
                ),
                subtitle: Text(dummyData[position].message ?? ""),
              )
            ],
          );
        });
  }
}
