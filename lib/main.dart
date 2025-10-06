// A homemade version of the game Wordle
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Knockoff Wordle",
      theme: ThemeData(primaryColor: Colors.black),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('The Knockoff Wordle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'THE KNOCKOFF WORDLE',
              style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w900,
                color: Colors.greenAccent,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              'Created By: Hayden Garcia',
              style: TextStyle(
                fontSize: 8,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
            TextSection(
              description:
                  'This is a home made version on the game "Wordle created by: Josh Wardle." '
                  'I created this new version of the game on September 24, 2025 '
                  'and have been calling this version the Knockoff Wordle '
                  'Please Enjoy!',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("How to Play"),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );

                if (result != null) print(result);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Gist of it'),
        automaticallyImplyLeading: false,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, "Rules have been read");
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextSection(description: ''),
            Text(
              'How the Game Works!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green[100],
              ),
            ),
            SizedBox(height: 50),
            Text(
              '1. You have to guess a five letter word, and you get six tries.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '2. If the word is not in the word list you will be prompted to input a new word.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '3. If a tile turns yellow that tile means the character is correct, but placed in wrong spot.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '4. If a tile turns grey that tile means the character is not used in the word.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '5. If a tile turns green that tile means it is in the right spot and using the right character.',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.brown,
              ),
            ),
            SizedBox(height: 14),
            Text(
              'How to Win!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 7),
            Text(
              'Get all the tiles to turn green before your guesses are up!',
              style: TextStyle(
                fontSize: 11,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),

            ElevatedButton(
              child: Text("Begin the game"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
