import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button App"),
        backgroundColor: Colors.teal,
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text("Text Button")
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("Press me")
              )
            ],
          ),
        ),
      ),
    );
  }
}
