import 'package:flutter/material.dart';

class NoConnectivty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("No Internet"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off,
            size: 72.0,
          ),
          Text("There is no connection to the internet"),
          Text("Please check your phone")
        ],
      )),
    );
  }
}
