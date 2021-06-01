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
    String _currentMilk;

    // New
    userData.doc(uid).get().then((DocumentSnapshot document) {
      if (document.exists) {
        _currentUsername = document.data()["user_name"];
        _currentSugars = document.data()["sugars"];
        _currentStrength = document.data()["strength"];
        _currentMilk = document.data()["milk"];
      }
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Settings"),
      ),
      body: FutureBuilder(
          future: userData.doc(uid).get(),
          builder: (context, snapshot) {
            // print(snapshot.requireData);
            if (snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.none){
              return Center(child: Icon(Icons.wifi_off),);
            }
            if (snapshot.connectionState == ConnectionState.active) {}
            if (snapshot.connectionState == ConnectionState.done){
              return SingleChildScrollView(
                child: new Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Text(
                        "Welcome $_currentUsername",
                        style: TextStyle(
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
                                hintText: "$_currentSugars sugars",
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
                            //  Roast
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
                                hintText: "$_currentSugars sugars",
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
                            //  Milk 
                            DropdownButtonFormField(
                              value: _currentMilk,
                              validator: (val) {
                                if (val == null || val.isEmpty) {
                                  return "Please change your roast strenght";
                                }
                                return null;
                              },
                              onChanged: (val) => _currentMilk = val,
                              decoration: InputDecoration(
                                labelText: "Milk",
                                hintText: "$_currentMilk", 
                                suffixIcon: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                                    child: Icon(Icons.invert_colors)),
                              ),
                              items: <String>['yes', 'no']
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            SizedBox(height:  16.0),
                            ElevatedButton(
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  await DatabaseService().updateUserData(
                                    _currentUsername,
                                    _currentSugars,
                                    _currentStrength,
                                    _currentMilk,
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
                                      content: Text("Change all formvalues"),
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
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.wifi_off,
                  size: 72.0,
                ),
                Text("There is no connection to the internet"),
                Text("Please check your phone")
              ],
            ));
          }),
    );
  }
}
