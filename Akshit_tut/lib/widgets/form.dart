import 'package:flutter/material.dart';

class MyFormWidget extends StatefulWidget {
  const MyFormWidget({super.key});

  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 8,
        title: const Text("Form Widget"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    key: ValueKey("firstName"),
                    decoration: InputDecoration(
                      hintText: "Enter First Name",
                    ),
                    validator: (value){
                      if (value.toString().isEmpty){
                      return 'First Name should not be Empty';
                        } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstName = value.toString();
                    },
                  ),
                  TextFormField(
                    key: ValueKey("lastName"),
                    decoration: InputDecoration(
                      hintText: "Enter Last Name",
                    ),
                    validator: (value){
                      if (value.toString().isEmpty){
                        return 'Last Name should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastName = value.toString();
                    },
                  ),
                  TextFormField(
                    key: ValueKey("email"),
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    validator: (value){
                      if (value.toString().isEmpty){
                        return 'Email should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    key: ValueKey("password"),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                    ),
                    validator: (value){
                      if (value.toString().isEmpty){
                        return 'Password should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  TextButton(
                      onPressed: () {
                        trysubmit();
                      },
                      child: Text('Submit')
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
