// 17121
// 8/30/2025
import 'package:flutter/material.dart';

// Creating MyApp class that extends StatelessWidget that holds the Name, Profession, and Email 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// @override funciton that will display the Name, Profession, Email. Is a must when a class extends StatelessWidget 
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
              new Counter(),
            ],
          ),
        ),
      ),
    );
  }
}

//Creating a counter class that extends StatefulWidget to be called in the MyApp class
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() {
    return new _CounterState();
  }
}

class _CounterState extends State<Counter> {
  // The 'State' objext holds the mutable data.
  int _count = 0;

// handles the onPressed event of the elevated button.
  void _increment() {
    // setState() tells Flutter to rebuild this Widget.
    setState(() {
      this._count++;
    });
  }

//function needed when creating a statefulWidget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Text('$_count'),
        const SizedBox(height: 10),
        new ElevatedButton(
          onPressed: this._increment,
          child: const Text("Follow"),
        ),
      ],
    );
  }
}

//is this working?
void main() => runApp(const MyApp());