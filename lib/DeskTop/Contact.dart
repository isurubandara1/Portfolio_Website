import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'dart:html' as html; // Import dart:html for web compatibility
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

  Future<void> sendEmail() async {
    // Use flutter_email_sender only for mobile platforms
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      final Email email = Email(
        body:
            'Name: ${nameController.text}\nEmail: ${emailController.text}\nMessage: ${messageController.text}',
        subject: 'Contact Form Submission',
        recipients: [
          'isurumbandara@gmail.com'
        ], // Replace with your default email address
        isHTML: false,
      );

      try {
        await FlutterEmailSender.send(email);
        _showDialog('Success', 'Email sent successfully!', Colors.green);
      } catch (error) {
        print('Error sending email: $error');
        _showDialog('Error', 'Failed to send email!', Colors.red);
      }
    } else {
      // For web, open the Gmail inbox directly with pre-filled values
      final String to = 'isurumbandara@gmail.com';
      final String subject = Uri.encodeComponent(nameController.text);
      final String body = Uri.encodeComponent(messageController.text);

      final String gmailUrl =
          'https://mail.google.com/mail/u/0/?view=cm&fs=1&to=$to&su=$subject&body=$body';

      html.window.open(gmailUrl, '_blank');
      // _showDialog('Success', 'Sent your Gmail successfully!', Colors.green);
    }
  }

  Future<void> saveData() async {
    if (_validateFields()) {
      CollectionReference contacts =
          FirebaseFirestore.instance.collection('contacts');
      try {
        await contacts.add({
          'name': nameController.text,
          'email': emailController.text,
          'message': messageController.text,
        });

        // Send email after saving data to Firestore
        await sendEmail();

        _showDialog('Success', 'Data saved and Sent your Gmail successfully!',
            Colors.green);
      } catch (error) {
        print('Error saving data to Firestore: $error');
        _showDialog('Error', 'Failed to save data to Firestore!', Colors.red);
      }

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
      appBar: MediaQuery.of(context).size.width <= 850
          ? AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  children: [
                    TextSpan(
                      text: 'Contact ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    TextSpan(
                      text: 'Me',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          : null,
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 850) {
                // Display Navbar for desktop
                return Navbar(context);
              } else {
                // Do not display anything for mobile
                return Container();
              }
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white12,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: 1100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MediaQuery.of(context).size.width <= 850
                          ? CircleAvatar(
                              radius: 80.0,
                              backgroundImage: AssetImage('assets/drawer.jpg'),
                            )
                          : RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                                children: [
                                  TextSpan(
                                      text: 'Contact ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32,
                                      )),
                                  TextSpan(
                                      text: 'Me',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32,
                                      )),
                                ],
                              ),
                            ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: nameController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
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
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: messageController,
                          style: TextStyle(color: Colors.white),
                          maxLines: 8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
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
                      SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          saveData();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          minimumSize: Size(120, 60),
                        ),
                        child: Text("Submit"),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
