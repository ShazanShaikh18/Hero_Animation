import 'package:flutter/material.dart';

class FullImage1 extends StatelessWidget {
  const FullImage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Image"),
      ),
      body: Center(
        child: Hero(
            tag: 'Animation 2',
            child: Container(
              height: 900,
              width: 500,
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/myPic3.jpg',
              ),
            )),
      ),
    );
  }
}
