import 'package:flutter/material.dart';

class ListGridView extends StatelessWidget {
  ListGridView({super.key});

  Map fruit_person = {
    'fruit': ["Organe", "Mango", "PineApple", "Apple", "Kiwi"],
    'person': ["Akash", "Sagar", "Mohit", "Mayank", "Divyank"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: const Text("List View"),
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruit_person["fruit"].length,
        //     itemBuilder: (ctx, index) {
        //       return Card(
        //         child: ListTile(
        //           title: Text(fruit_person["fruit"][index]),
        //           subtitle: Text(fruit_person["person"][index]),
        //           leading: Icon(Icons.add_business_sharp),
        //           onTap: (){
        //             print(fruit_person["fruit"][index]);
        //           },
        //         ),
        //       );
        //     }
        // ),
        child: GridView.builder(
          itemCount: fruit_person["fruit"].length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: 2/3,
              crossAxisSpacing: 5,
                mainAxisSpacing: 10,
            ),
            itemBuilder: (ctx, index) {
              return Card(
                child: Center(
                  child: Text(fruit_person["fruit"][index]),
                ),
              );
            }
        ),
      ),
    );
  }
}
