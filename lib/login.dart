import 'package:flutter/material.dart';
import 'package:flutter_ui/Greet.dart';
import 'package:flutter_ui/index.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
        backgroundColor: Colors.blueAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Initial()),
            );
          },
          child: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: ClipPath(
                        clipper: CustomClipperUpper(),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: Color.fromRGBO(48, 83, 249, 1.0),
                          width: MediaQuery.of(context).size.width/1.4,
                          height: MediaQuery.of(context).size.height/4.5,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: const Text(
                              "Log In",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 7,child: Container())
                ],
              )

          ),

          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Expanded(flex: 2 ,child: Container()),
                  Expanded(
                    flex: 11,
                    child:
                    ClipPath(
                      clipper: CustomClipperLower(140),
                      child: Container(
                        width: double.infinity,
                        color: Color.fromRGBO(15, 31, 65, 1.0),//Color(0xff0F1F41),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                  child:
                                  Padding(
                                    padding: EdgeInsets.only(top:145),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          // color: Colors.red,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  "Email",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 50,

                                                child: TextFormField(
                                                  style: TextStyle(color: Colors.white),
                                                  textAlign: TextAlign.start,
                                                  decoration: InputDecoration(
                                                    hintText: "Type here..",
                                                    hintStyle: TextStyle(color: Colors.white24),
                                                    fillColor: Color.fromRGBO(255, 255, 255, 0.05),
                                                    filled: true,
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                                                    ),
                                                    focusedBorder:  OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                                                    ),

                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          width: double.infinity,
                                          // color: Colors.red,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  "Password",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 50,

                                                child: TextFormField(
                                                  obscureText:true,
                                                  style: TextStyle(color: Colors.white),
                                                  textAlign: TextAlign.start,
                                                  decoration: InputDecoration(
                                                    hintText: "Type here..",
                                                    hintStyle: TextStyle(color: Colors.white24),
                                                    fillColor: Color.fromRGBO(255, 255, 255, 0.05),
                                                    filled: true,
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                                                    ),
                                                    focusedBorder:  OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
                                                    ),

                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),

                              Padding(
                                padding: EdgeInsets.only(bottom: 60),
                                child: MaterialButton(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(48, 83, 249, 1.0),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Greet()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                                    child: const Text(
                                      "Log In",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily: 'FiraMono'
                                      ),
                                    ),
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
class CustomClipperLower extends CustomClipper<Path> {
  late double round;


  // constructor
  CustomClipperLower(double round) {
    this.round = round;

  }
  @override
  Path getClip(Size size) {
    var startPoint = Offset(size.width / 2, 0);
    var endPoint = Offset(size.width, 140);
    Path path = Path()
      ..moveTo(0, 140)
      ..quadraticBezierTo(startPoint.dx,startPoint.dy,endPoint.dx,endPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(0,size.height)
      ..close()
    ;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class CustomClipperUpper extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    var startPoint = Offset(size.height, size.height);
    var endPoint = Offset(0, size.height/1.3);
    Path path = Path()
      ..lineTo(size.width/1.01, 0)
      ..quadraticBezierTo(startPoint.dx,startPoint.dy,endPoint.dx,endPoint.dy)

      ..close()
    ;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}