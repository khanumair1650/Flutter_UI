import 'package:flutter/material.dart';
import 'package:flutter_ui/login.dart';
import 'package:flutter_ui/register.dart';

class Initial extends StatefulWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  _InitialState createState() => _InitialState();
}

class _InitialState extends State<Initial> {
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
            title: const Text("Welcome",textAlign: TextAlign.center),
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: (){
              },
            ),
          ),
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton.icon(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  padding: const EdgeInsets.fromLTRB(9, 9, 9, 9),
                  splashColor: Colors.amber,
                  icon:const Icon(
                    Icons.account_circle_rounded,
                  ), label: const Text("     LOGIN    ",style: TextStyle(fontWeight: FontWeight.bold),),
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 30),
                RaisedButton.icon(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                  splashColor: Colors.amberAccent,
                  icon:const Icon(
                    Icons.add_to_home_screen_outlined,
                  ), label: const Text("   SIGNUP   ",style: TextStyle(fontWeight: FontWeight.bold),),
                  color: Colors.blueAccent,
                ),
              ],
            ),
          )
      ),
    );
  }
}
