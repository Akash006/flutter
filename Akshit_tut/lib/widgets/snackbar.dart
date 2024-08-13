import 'package:flutter/material.dart';

class MySnackBarWidget extends StatelessWidget {
  const MySnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
      elevation: 8,
      title: const Text("Snack Bar Widget"),
        ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Show Snackbar"),
              onPressed: (){
              final snackbar = SnackBar(
                  content: Text('Yay! A SnackBar!'),
                      action: SnackBarAction(label: 'Undo', onPressed: (){}),
                backgroundColor: Colors.lightGreenAccent,
                duration: Duration(milliseconds: 3000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                behavior: SnackBarBehavior.floating,
                showCloseIcon: true,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
            ),
          ),
        ),
      );
  }
}
