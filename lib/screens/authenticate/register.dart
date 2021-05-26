import 'dart:math';

import 'package:brew_crew/screens/home/settings_form.dart';

import 'package:brew_crew/service/authentication.dart';
import 'package:brew_crew/service/database.dart';
import 'package:brew_crew/service/validatefunctions.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/app/loading.dart';
import '../../app/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                "Welcome to BizBrew ",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 25,
                ),
              ),
              Text(
                "To continue register with an email and password",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final valFunc = Validatefunctions();
  // text field state
  String username = '';
  String email = '';
  String password = '';
  String repeatPassword = '';
  String error = '';
  String exception = "";
  bool hidden = true;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                //Add later a form for the username~
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (val) =>
                      val.isEmpty ? "Please enter a username" : null,
                  onChanged: (val) {
                    username = val.trim();
                  },
                  decoration: InputDecoration(
                    labelText: "Display name",
                    hintText: "Enter a display name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                        child: Icon(Icons.person)),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                //emailfield
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => valFunc.validateEmail(val)
                      ? "Please enter a correct emailadress"
                      : null,
                  onChanged: (val) {
                    email = val.trim();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter an Email ",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                        child: Icon(Icons.mail)),
                  ),
                ),
                SizedBox(height: 16.0),
                //passwordfield
                TextFormField(
                  obscureText: hidden,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter a password ",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    suffixIcon: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                        child: Icon(Icons.password)),
                  ),
                  onChanged: (val) {
                    password = val.trim();
                  },
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long!' : null,
                ),
                SizedBox(height: 16.0),
                //repeatpasswordfield
                TextFormField(
                  obscureText: hidden,
                  decoration: InputDecoration(
                    labelText: "Password Check",
                    hintText: "Repeat your password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Colors.red),
                      gapPadding: 10,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: IconButton(
                        onPressed: _togglePasswordView,
                        icon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  onChanged: (val) {
                    repeatPassword = val.trim();
                  },
                  validator: (val) =>
                      valFunc.validatePassword(password, repeatPassword)
                          ? "Please repeat the same password"
                          : null,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      setState(() => loading = true);
                      dynamic result = await AuthService()
                          .registerEmailPassword(email, password);
                      if (result == true) {
                        await DatabaseService()
                            .addUserData(username, 1, 'light', "no");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsForm()),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Account is created")));
                      } else {
                        setState(() => loading = false);
                        exception = result;
                      }
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(exception.isNotEmpty ? exception : ""),
                ),
              ],
            ),
          );
  }

  void _togglePasswordView() {
    setState(() {
      hidden = !hidden;
    });
  }
}
