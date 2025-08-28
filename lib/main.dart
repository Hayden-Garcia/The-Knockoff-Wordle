// 17121
// 8/30/2025
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Personal Business Card';
    return new MaterialApp(
      title: appTitle,
      home: new Scaffold(
        appBar: new AppBar(title: const Text(appTitle)),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hayden Garcia',
                style: TextStyle(
                  color: Color.fromARGB(114, 89, 64, 0),
                  fontWeight: FontWeight.normal,
                  fontSize: 7,
                ),
              ),
              const SizedBox(height: 13),
              Text(
                'Professional Gamer',
                style: TextStyle(
                  color: Color.fromARGB(114, 89, 64, 0),
                  fontWeight: FontWeight.normal,
                  fontSize: 7,
                ),
              ),
              const SizedBox(height: 13),
              Text(
                'helpline@gamingknowledge.com',
                style: TextStyle(
                  color: Color.fromARGB(114, 89, 64, 0),
                  fontWeight: FontWeight.normal,
                  fontSize: 7,
                ),
              ),
              const SizedBox(height: 40),
              new CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/474x/45/c0/8e/45c08e7ac7f0670d7de848bb81fc46ab.jpg?nii=t',
                ),
              ),
              const SizedBox(height: 15),
              // call the counter class
              
            ],
          ),
        ),
      ),
    );
  }
}
