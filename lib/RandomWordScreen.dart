import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'SaveWordScreen.dart';
import 'CounterApp.dart';

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

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Saved Word'),
        ),
        body: Text(saveWords.join("  -  ")),
      );
    }));

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SaveWordScreen(saveWords: saveWords)));
  }

  void _move() {
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (context) => CounterApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        // color: Color.fromRGBO(66, 165, 241, 0.7),
        color: Colors.red[400]);

    final items = ['data 1', 'data 2', 'data 3'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi flutter pertama'),
      ),
      body:
          // Container(
          //   padding: EdgeInsets.all(10),
          //   child: Card(
          //       child: Column(mainAxisSize: MainAxisSize.min, children: [
          //     ListTile(
          //       leading: Icon(Icons.people_sharp),
          //       title: Text("Koala NTT"),
          //       subtitle: Text('@koala_ntt'),
          //     ),
          //     Text('Card', style: TextStyle(fontSize: 40)),
          //   ])),
          // ));
          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [Text('OK1'), Text('OK2')],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.star,
          //           color: Colors.green,
          //         ),
          //         Icon(
          //           Icons.star,
          //           color: Colors.green,
          //         ),
          //         Icon(
          //           Icons.star,
          //           color: Colors.green,
          //         ),
          //         Icon(
          //           Icons.star,
          //           color: Colors.green,
          //         ),
          //         Icon(Icons.star)
          //       ],
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       padding: EdgeInsets.all(10.0),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [Text('OK3'), Text('OK4')],
          //       ),
          //     )
          //   ],
          // ),

          //   ListView(
          //   padding: EdgeInsets.all(10.0),
          //   children: [
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //     Container(child: Text('List1'), height: 150),
          //   ],
          // )

          //     ListView.builder(
          //   padding: EdgeInsets.all(10.0),
          //   itemBuilder: (BuildContext ctx, int index) {
          //     return Container(
          //       child: Text("List ${items[index]}"),
          //       height: 150,
          //       decoration: BoxDecoration(
          //           border: Border(bottom: BorderSide(color: Colors.grey))),
          //     );
          //   },
          //   itemCount: items.length,
          // )

          //     ListView.separated(
          //   padding: EdgeInsets.all(10.0),
          //   itemBuilder: (BuildContext ctx, int index) {
          //     return Container(
          //       child: Text("List ${items[index]}"),
          //       height: 150,
          //     );
          //   },
          //   itemCount: items.length,
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const Divider(),
          // )

          //     GridView.count(
          //   padding: EdgeInsets.all(10),
          //   mainAxisSpacing: 4,
          //   crossAxisSpacing: 4,
          //   crossAxisCount: 2,
          //   children: List.generate(20, (index) {
          //     return Container(
          //       color: Colors.green,
          //       child: Center(child: Text('Level $index')),
          //     );
          //   }),
          // ),

          //     Stack(
          //   children: <Widget>[
          //     Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 90,
          //       height: 90,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       width: 80,
          //       height: 80,
          //       color: Colors.green,
          //     )
          //   ],
          // )

          //     Stack(
          //   // alignment: Alignment(0, 0),
          //   alignment: Alignment.center,
          //   children: [
          //     Image.asset('images/kupang.png'),
          //     Container(
          //       margin: EdgeInsets.only(top: 50),
          //       padding: EdgeInsets.all(10),
          //       color: Colors.amberAccent,
          //       child: Text(
          //         'Text',
          //         style: TextStyle(fontSize: 50),
          //       ),
          //     )
          //   ],
          // )

          //     Container(
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         child: Container(
          //           child: Text('Lorem'),
          //           color: Colors.yellow,
          //           padding: EdgeInsets.all(10),
          //         ),
          //         left: 50,
          //         top: 50,
          //       )
          //     ],
          //   ),
          //   margin: EdgeInsets.only(top: 100),
          //   height: 250,
          //   width: 300,
          //   color: Colors.blue,
          // )

          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            // Image.asset(
            //   'images/kupang.png',
            //   width: 100,
            //   height: 50,
            // ),
            Image.network(
              'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
              width: 500,
              height: 500,
            ),
            Text(randomWord, style: _textStyle),
            IconButton(
                icon: Icon(Icons.favorite_border),
                iconSize: 50,
                color: Colors.amber[400],
                onPressed: _saveWord),
            IconButton(
                icon: Icon(Icons.move_down),
                iconSize: 50,
                color: Colors.red[400],
                onPressed: _move)
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
