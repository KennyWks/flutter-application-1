import 'package:flutter/material.dart';

class SaveWordScreen extends StatelessWidget {
  var saveWords = [];

  SaveWordScreen({saveWords});

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
