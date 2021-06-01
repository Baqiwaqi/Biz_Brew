import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:brew_crew/screens/authenticate/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  const Authenticate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Welcome"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Welcome to BizBrew",
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              // Bizworx Logo
              PhysicalModel(
                elevation: 32.0,
                shape: BoxShape.circle,
                shadowColor: Colors.white,
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(45.0)),
                child: Container(
                  height: 240.0,
                  width: 240.0,
                  child: Image(
                    image: AssetImage('assets/images/icon-logo.png'),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text("Are you a new user go to the"),
                  TextButton(
                      
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    "Already have an account go to the",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      "Sign In!",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
