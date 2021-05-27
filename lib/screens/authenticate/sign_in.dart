import 'package:brew_crew/app/loading.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/app/constants.dart';
import 'package:brew_crew/service/authentication.dart';
import 'package:brew_crew/service/validatefunctions.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 25,
                ),
              ),
              Text("Sign in with email and password and continue"),
              SizedBox(height: 20.0),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final valFunc = Validatefunctions();

  // text field state
  String username = '';
  String email = '';
  String password = '';
  String exception = '';
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
                //emailfield
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) => valFunc.validateEmail(val)
                      ? 'Enter an correct email!'
                      : null,
                  onChanged: (val) {
                    email = val.trim();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your Email ",
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
                SizedBox(height: 20.0),
                //passwordfield
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password ",
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
                  validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long!' : null,
                  onChanged: (val) {
                    password = val.trim();
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    //activate validators
                    if (_formKey.currentState.validate()) {
                      // initiate loading screen
                      setState(() => loading = true);
                      // signin function
                      dynamic result = await AuthService()
                          .signInEmailPassword(email, password);
                      print(result);
                      // check for sign  result
                      if (result == false) {
                        setState(() => loading = false);
                        exception = 'Please enter a valid email or password!';
                      } else {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      }
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      if (email.isEmpty) {
                        setState(() =>
                            exception = "Enter your emailadress");
                      } else {
                        dynamic result =
                            await AuthService().sendPasswordResetEmail(email);
                        if (result == true) {
                          setState(() => exception =
                              "Password reset is send to your email!");
                        } else {
                          setState(() {
                            exception = result;
                          });
                        }
                      }
                    },
                    child: Text("Password Reset")),
                Center(
                  child: Text(exception.isNotEmpty ? exception : ""),
                ),
              ],
            ),
          );
  }
}
