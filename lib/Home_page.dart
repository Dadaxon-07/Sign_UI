import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/LogIn.dart';
import 'package:sign_up/SecondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(top: 160, right: 220),
                child: Text(
                  "Welcome To \n DigiNews",
                  style: TextStyle(fontSize: 24, fontFamily: "Kanit-Bold"),
                )),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Secondpage();
                }));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                    color: Colors.black),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 160),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 80),
                        child: Text(
                          "Continue with Email",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                    color: Colors.blue),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 160),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                    color: Colors.white),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: 160),
                        child: Icon(
                          Icons.chrome_reader_mode_outlined,
                          color: Colors.black,
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 70),
                        child: Text(
                          "Continue with Google",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 90),
                    child: Text("Already have an account ?")),
                SizedBox(
                  width: 6,
                ),
                InkWell(
                    onTap: () {Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Login();
                        }));},
                    child: Container(
                        child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )))
              ],
            )
          ],
        ),
      ]),
    );
  }
}
