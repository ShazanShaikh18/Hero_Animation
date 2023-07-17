// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Wrap(
//           spacing: 2,
//           runSpacing: 2,
//           alignment: WrapAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.amber,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.red,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.black,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.pink,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.cyan,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.deepPurple,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.amber,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.green,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 100,
//               width: 100,
//               color: Colors.red.shade100,
//               child: Text(
//                 "Shazan 18",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//             ),
//             RichText(
//                 text: TextSpan(
//                     style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 25,
//                         color: Colors.blue),
//                     children: [
//                   TextSpan(text: "Royal "),
//                   WidgetSpan(child: Icon(Icons.people)),
//                   TextSpan(
//                       text: "  Shazan",
//                       style: TextStyle(
//                           color: Colors.red,
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold)),
//                 ])),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shazan1/full_image.dart';

import 'full_image1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hero Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullImage(),
                  ));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hero(
                    tag: 'Animation',
                    child: Container(
                      height: 250,
                      width: 150,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/myPic2.jpg',
                        height: 150,
                      ),
                    )),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullImage1(),
                        ));
                  },
                  child: Hero(
                      tag: 'Animation 2',
                      child: Container(
                        height: 250,
                        width: 150,
                        child: Image.asset(
                          'assets/images/myPic3.jpg',
                          height: 150,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
