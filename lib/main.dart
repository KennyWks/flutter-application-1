import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      home: RandomWord(),
    );
  }
}

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var saveWords = [];
  String randomWord = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void _saveWord() {
    saveWords.add(randomWord);
    print(saveWords);

    //   Navigator.of(context)
    //       .push(MaterialPageRoute(builder: (BuildContext context) {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text('Saved Word'),
    //       ),
    //       body: Text(saveWords.join("  -  ")),
    //     );
    //   }));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SaveWordScreen(saveWords: saveWords)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi flutter pertama'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(randomWord, style: TextStyle(fontSize: 40)),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: _saveWord)
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeWord();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}

class SaveWordScreen extends StatelessWidget {
  var saveWords = [];

  SaveWordScreen({this.saveWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Word'),
      ),
      body: Center(
        child: Text(saveWords.join("  -  "), style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
