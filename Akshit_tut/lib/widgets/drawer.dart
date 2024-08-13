import 'package:flutter/material.dart';

class MyDrawerWidget extends StatefulWidget {
  const MyDrawerWidget({super.key});

  @override
  State<MyDrawerWidget> createState() => _MyDrawerWidgetState();
}

class _MyDrawerWidgetState extends State<MyDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 8,
        title: const Text("Drawer Widget"),
      ),
      body: const Center(child: Text("Drawer Demo")),
      drawer: Drawer(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    DrawerHeader(
                        padding: EdgeInsets.zero,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: const Center(
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                        'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg')),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Akash Saini"),
                                      Text("akashsaini0797@gmail.com"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    const ListTile(
                      leading: Icon(Icons.folder),
                      title: Text("My Files"),
                    ),
                    const ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Shared with me'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Starred'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.delete),
                      title: Text('Trash'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.upload),
                      title: Text('Uploads'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Divider(),
                    const Text("Made by Ak-studio",
                        style: TextStyle(color: Colors.grey)),
                    const Text(
                      "Version: 1.2.0",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
