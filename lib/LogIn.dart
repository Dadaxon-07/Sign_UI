import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  "Welcome back !",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 8,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Enter your email address and password login",
                  style: TextStyle(color: Colors.grey),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 35),
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey[200]),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 35),
              child: Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.grey[200]),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Login();
                }));
              },
              child: Container(
                height: 60,
                width: 300,
                child: Center(
                    child: Text(
                  "Log In ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(14)),
              ),
            ))
          ],
        ),
      ]
      ),
    );
  }
}
