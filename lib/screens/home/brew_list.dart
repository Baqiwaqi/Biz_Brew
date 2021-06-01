import 'package:brew_crew/service/database.dart';
import 'package:brew_crew/service/validatefunctions.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BrewInformation extends StatefulWidget {
  //  init functions
  @override
  _BrewInformationState createState() => _BrewInformationState();
}

class _BrewInformationState extends State<BrewInformation> {
  final valFunc = Validatefunctions();
  final collections = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: collections.brewCollection.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.connectionState == ConnectionState.active) {
          return new ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {
              final username = document.data()['user_name'];
              final sugars = document.data()['sugars'];
              final strength = document.data()['strength'];
              final milk = document.data()['milk'];

              return new ListTile(
                leading: CircleAvatar(
                  radius: 24.0,
                  // added function: avatar color based on sterngth
                  backgroundColor: valFunc.coffeeColor(strength),
                  backgroundImage: AssetImage("assets/images/coffee_icon.png"),
                ),
                title: new Text(username),
                subtitle: Column(
                  children: [
                    new Text(
                        "Takes ${sugars.toString()} sugar(s) and likes his coffee with $strength roast and ${valFunc.checkMilk(milk)}"),
                  ],
                ),
              );
            }).toList(),
          );
        }
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "There is no connection to the internet, please check your phone",
              style: TextStyle(fontSize: 32),
            ),
          ),
        );
      },
    );
  }
}
