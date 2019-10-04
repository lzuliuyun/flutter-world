// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main () => runApp(MyApp(
    items: new List<String>.generate(1000, (i)=> "Item $i")
));

class MyApp extends StatelessWidget{
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context ){
//    return MaterialApp(
//      title:'Text widget',
//      home:Scaffold(
//        body:Center(
//          child:Container(
//              height:200.0,
//              child: MyList()
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class MyList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return ListView(
//      scrollDirection: Axis.horizontal,
//      children: <Widget>[
//        new Container(
//          width:180.0,
//          color: Colors.lightBlue,
//        ), new Container(
//          width:180.0,
//          color: Colors.amber,
//        ), new Container(
//          width:180.0,
//          color: Colors.deepOrange,
//        ),new Container(
//          width:180.0,
//          color: Colors.deepPurpleAccent,
//        ),
//      ],
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      title: 'text',
//      home: Scaffold(
//        body: Center(
//          child: Container(
////            child: new Text(
////              'jjjjjjj'
////              'hello world all man hello world ald all man hello world all mld all man hello world all mld all man hello world all mld all man hello world all mld all man hello world all mll man hello world all man hello world all manhello world all man',
////              textAlign: TextAlign.left,
////              maxLines: 3,
////              overflow: TextOverflow.ellipsis,
////              style: TextStyle(
////                fontSize: 15,
////                color: Color.fromARGB(255, 255, 150, 150),
////                decoration: TextDecoration.underline,
////                decorationStyle: TextDecorationStyle.solid,
////              ),
////            ),x
//            child: new Image.network(
//              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1570170464594&di=6a9f9a8e1f5c1507238e24e7a25bbe82&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2F1d%2Fffaf1512094_130_170.jpg',
////              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1570169507286&di=188100c07d64e74978ea5301724435a3&imgtype=0&src=http%3A%2F%2Fimg.kutoo8.com%2Fupload%2Fimage%2F43278246%2Fleisineiyi%2520%25287%2529_960x540.jpg',
////              scale: 1.0,
//              repeat: ImageRepeat.repeat,
//              width: 400,
//              height: 300,
//              fit: BoxFit.scaleDown,
//            ),
////            alignment: Alignment.topLeft,
////            color: Colors.lightGreen,
////            width:300.0,
////            height:400.0,
////            padding: const EdgeInsets.fromLTRB(10.0,30.0,0.0,0.0),
//          )
//        ),
//      ),
//    ); //此处必要要有分号
//  }
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: RandomWords(),
//      // home: Scaffold(
//      //   appBar: AppBar(
//      //     title: Text('Welcome to Flutter'),
//      //   ),
//      //   body: Center(
//      //     child: RandomWords(),
//      //     // child: Text(wordPair.asPascalCase),
//      //   ),
//      // ),
//    );
//  }
//}

//class RandomWordsState extends State<RandomWords> {
//  final _suggestions = <WordPair>[];
//  final _biggerFont = const TextStyle(fontSize: 10.0);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Startup Name Generator'),
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return ListView.builder(
//        padding: const EdgeInsets.all(10.0),
//        itemBuilder: /*1*/ (context, i) {
//          if (i.isOdd) return Divider(); /*2*/
//
//          final index = i ~/ 2; /*3*/
//          if (index >= _suggestions.length) {
//            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//          }
//          return _buildRow(_suggestions[index]);
//        });
//  }
//
//  Widget _buildRow(WordPair pair) {
//    return ListTile(
//      title: Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => RandomWordsState();
//}
