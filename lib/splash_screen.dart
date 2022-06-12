import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}
