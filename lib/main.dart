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
  TextEditingController user, pass;
  String passError, userError;
  SnackBar alarm;
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    user = TextEditingController();
    pass = TextEditingController();
    scaffoldKey = GlobalKey<ScaffoldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          key: scaffoldKey,
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
                      errorText: userError,
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
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      errorText: passError,
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
                      setState(() {
                        if (user.text.length < 4) {
                          userError =
                              "Please enter at least 4 letters at userName ";
                        } else if (pass.text.length < 4) {
                          passError =
                              "Please enter at least 4 letters at password ";
                          userError = null;
                        } else {
                          userError = null;
                          passError = null;
                          alarm = SnackBar(
                            content:
                                Text("Login Successful Welcome ${user.text}", textAlign: TextAlign.center,),
                          );
                          scaffoldKey.currentState.showSnackBar(alarm);
                        }
                      });
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
