import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_crew/app/constants.dart';
import 'package:brew_crew/service/database.dart';
import 'package:brew_crew/service/validatefunctions.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final valFunc = Validatefunctions();

  @override
  Widget build(BuildContext context) {
    // Firebase properties
    FirebaseAuth auth = FirebaseAuth.instance;
    final firebaseUser = auth.currentUser;
    final uid = firebaseUser.uid;
    CollectionReference userData =
        FirebaseFirestore.instance.collection('brews');

    //form properties
    final _formKey = GlobalKey<FormState>();
    String _currentUsername;
    int _currentSugars;
    String _currentStrength;

    // New
    userData.doc(uid).get().then((DocumentSnapshot document) {
      if (document.exists) {
        _currentUsername = document.data()["user_name"];
        _currentSugars = document.data()["sugars"];
        _currentStrength = document.data()["strength"];
      }
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Settings"),
      ),
      body: FutureBuilder<DocumentSnapshot>(
          future: userData.doc(uid).get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done){
              return SingleChildScrollView(
                child: new Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Text(
                        "Welcome ${_currentUsername}",
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 25,
                        ),
                      ),
                      Text("Here you can change your brew settings"),
                      SizedBox(height: 20.0),
                      // Settings Form
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            //usernamefield
                            TextFormField(
                              initialValue: _currentUsername,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Please change your username";
                                }
                                return null;
                              },
                              onChanged: (val) => _currentUsername = val,
                              // decoration
                              decoration: InputDecoration(
                                labelText: "Username",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 20),
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
                                suffixIcon: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                                  child: SvgPicture.asset(
                                    "assets/icons/User.svg",
                                    height: 18,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            //sugarsfield
                            DropdownButtonFormField(
                              value: _currentSugars,
                              validator: (val) {
                                if (val == null || val.isNaN) {
                                  return "Please change your sugars amount";
                                }
                                return null;
                              },
                              onChanged: (val) => _currentSugars = val,
                              decoration: InputDecoration(
                                labelText: "Sugars",
                                hintText: "${_currentSugars} sugars",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 20),
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
                                suffixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                                    child: Icon(Icons.cake)),
                              ),
                              items: <int>[0, 1, 2, 3, 4]
                                  .map<DropdownMenuItem<int>>((value) {
                                return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(value.toString()),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 10),
                            DropdownButtonFormField(
                              value: _currentStrength,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Please change your roast strenght";
                                }
                                return null;
                              },
                              onChanged: (val) => _currentStrength = val,
                              decoration: InputDecoration(
                                labelText: "Roast Strength",
                                hintText: "${_currentSugars} sugars",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 20),
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
                                suffixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                                    child: Icon(Icons.brightness_high)),
                              ),
                              items: <String>['light', 'medium', 'dark']
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  await DatabaseService().updateUserData(
                                    _currentUsername,
                                    _currentSugars,
                                    _currentStrength,
                                    // milk 
                                    false
                                  );

                                  Navigator.popUntil(
                                      context, (route) => route.isFirst);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Changes are saved"),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Change all form values"),
                                    ),
                                  );
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kPrimaryColor),
                              ),
                              child: Text(
                                "Update",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            //else != state.active  
            return Text("There is no connection to the internet, please check your phone");
          }),
    );
  }
}
