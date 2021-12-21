import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/index.dart';

class Greet extends StatefulWidget {
  const Greet({Key? key}) : super(key: key);

  @override
  _GreetState createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/reg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(Icons.logout),

              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Initial()),
                        (route) => false);
              },
            )
          ],
        ),
        body: const Center(
          child: Text('Congratulations on Successfully Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              )
          ),
        ),
      ),
    );
  }
}