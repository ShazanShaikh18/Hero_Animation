import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  const FullImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Image"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Hero(
                  tag: 'Animation',
                  child: Container(
                    height: 900,
                    width: 500,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/myPic2.jpg',
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
