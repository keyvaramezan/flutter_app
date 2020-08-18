import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController user,pass;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("ورود به سیستم"),
          ),
          body: ListView(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/logo.png",
                    width: 200,
                    height: 200,
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
                child: TextField(
                  controller: user,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Colors.white12,
                      filled: true,
                      contentPadding:
                      EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      hintText: "نام کاربری",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(8.0)))),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
                child: TextField(
                  controller: pass,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      fillColor: Colors.white12,
                      filled: true,
                      contentPadding:
                      EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      hintText: "کلمه عبور",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(8.0)))),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    color: Colors.blueAccent,
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        print("user ${user.text}, password: ${pass.text}");
                    },
                    textColor: Colors.white,
                    child: Text("ورود"),
                  ))
            ],
          ),
          backgroundColor: Color.fromRGBO(72, 72, 72, 1.0)),
    );
  }
}


