import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SpinKitThreeBounce(
            color: kPrimaryColor,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}