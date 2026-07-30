import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  static const List<Map<String, dynamic>> chats = [
    {
      "name": "James",
      "message": "Hello",
      "time": "9:50",
      "unread": 10,
    },
    {
      "name": "Jhon",
      "message": "Lorem ipsum dolor sit amet...",
      "time": "8:52",
      "unread": 1,
    },
    {
      "name": "Korin",
      "message": "Lorem ipsum dolor sit amet...",
      "time": "Yesterday",
      "unread": 0,
    },
    {
      "name": "Nona",
      "message": "Hello",
      "time": "23 Jul",
      "unread": 0,
    },
    {
      "name": "John",
      "message": "Hello",
      "time": "8:54",
      "unread": 0,
    },
    {
      "name": "Johnsson",
      "message": "Hello",
      "time": "23 Jul",
      "unread": 0,
    },
    {
      "name": "Mark",
      "message": "Hello",
      "time": "7:54",
      "unread": 0,
    },
    {
      "name": "Roy",
      "message": "Hello",
      "time": "Yesterday",
      "unread": 0,
    },
    {
      "name": "Land",
      "message": "Hello",
      "time": "",
      "unread": 0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          elevation: 0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 18),
            Icon(Icons.search),
            SizedBox(width: 18),
            Icon(Icons.more_vert),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(text: "CHAT"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];

                return ListTile(
                  leading: const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.green,
                  ),

                  title: Text(
                    chat["name"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  subtitle: Text(
                    chat["message"],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chat["time"],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      if (chat["unread"] > 0)
                        Container(
                          width: 22,
                          height: 22,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            chat["unread"].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),

            const Center(
              child: Text(
                "Status Screen",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const Center(
              child: Text(
                "Calls Screen",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}