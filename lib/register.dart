import 'package:flutter/material.dart';
import 'package:flutter_ui/OTP.dart';
import 'package:flutter_ui/index.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _controller = TextEditingController();
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
          title: const Text("Register",textAlign: TextAlign.center),
          backgroundColor: Colors.transparent,
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
        body: Stack(

          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 00),
              child: const Text(
                ' ',

                style: TextStyle(color: Colors.black87, fontSize: 30,fontFamily: 'FiraMono'),
              ),
            ),
            SingleChildScrollView(
              child: Container(

                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(

                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),

                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Student Name",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),

                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),




                          ),
                          const SizedBox(
                            height: 30,
                          ),


                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Enroll No",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Phone no",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),maxLength: 10,keyboardType: TextInputType.number,controller: _controller,
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          Container(
                            child: AwesomeDropDown(

                              dropDownList:["--Select College--","Thakur College of Engineering and Technology","Veermata Jijabai Technological Institute ","Vivekanand Education Societys Institute Of Technology","Don Bosco Institute of Technology","Indian Institute of Technology"],
                              dropDownIcon:Icon(Icons.keyboard_arrow_down) ,
                              elevation: 3,
                              padding: 5,
                              dropDownOverlayBGColor: Colors.black87,
                              dropDownBGColor: Colors.blueGrey,
                            ),

                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: AwesomeDropDown(

                              dropDownList:["--Select Branch--","Computer","Civil","Mechanical","Electronics"],
                              dropDownIcon:Icon(Icons.keyboard_arrow_down) ,
                              elevation: 3,
                              padding: 5,
                              dropDownOverlayBGColor: Colors.black87,
                              dropDownBGColor: Colors.blueGrey,
                            ),

                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                hintText: "Confirm Password",
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'FiraMono'),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => OTPScreen(_controller.text)),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),

                        ],
                      ),
                    )
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