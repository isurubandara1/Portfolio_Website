import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'Common.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  Future<void> saveData() async {
    if (_validateFields()) {
      CollectionReference contacts =
          FirebaseFirestore.instance.collection('contacts');
      await contacts.add({
        'name': nameController.text,
        'email': emailController.text,
        'message': messageController.text,
      });

      _showDialog('Success', 'Data saved successfully!', Colors.green);

      setState(() {
        nameController.clear();
        emailController.clear();
        messageController.clear();
      });
    } else {
      _showDialog('Error', 'Please fill in all fields!', Colors.red);
    }
  }

  bool _validateFields() {
    return nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        messageController.text.isNotEmpty;
  }

  void _showDialog(String title, String content, Color color) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content, style: TextStyle(color: color)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(context),
            SizedBox(height: 20),
            Container(
              color: Colors.white12,
              height: MediaQuery.of(context).size.width * 0.41,
              width: MediaQuery.of(context).size.width - 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        children: [
                          TextSpan(
                              text: 'Contact ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'Me',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, right: 200),
                      child: TextField(
                        controller: nameController,
                        //autofocus: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter your name",
                          labelText: "Name",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, right: 200),
                      child: TextField(
                        controller: emailController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter your email",
                          labelText: "Email Address",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, right: 200),
                      child: TextField(
                        controller: messageController,
                        style: TextStyle(color: Colors.white),
                        maxLines: 7,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter your Message",
                          labelText: "Write Message Here...",
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        saveData();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                          side: BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        minimumSize: Size(120, 60),
                      ),
                      child: const Text("Submit"),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
