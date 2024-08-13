import 'package:flutter/material.dart';

class MyDismissableWidget extends StatefulWidget {
  const MyDismissableWidget({super.key});

  @override
  State<MyDismissableWidget> createState() => _MyDismissableWidgetState();
}

class _MyDismissableWidgetState extends State<MyDismissableWidget> {
  List<String> fruits = ["Sunday", "Monday", "Tuesday", "Wednessday", "Thursday", "Friday", "Saturday"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 8,
        title: const Text("Dismissable Widget"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
          itemBuilder: (ctx, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction){
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(fruit),
                              backgroundColor: Colors.red,
                      )
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(fruit),
                        backgroundColor: Colors.green,
                      )
                  );
                }
              },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.delete_forever_rounded),
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.account_tree_outlined)
                ),
              key: Key(fruit),
              child: Card(
                child: ListTile(
                  title: Text(fruit),
                ),
              )
            );
          }
      ),
    );
  }
}
