import 'package:flutter/material.dart';
import 'package:layout2/models/tmp.dart';

import './models/song.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Song> songs = const [
    Song('Rape Me', 'Nirvana', 201, 'assets/images/01.jpg'),
    Song('Metalingus', 'Alter Bridge', 323, 'assets/images/02.jpg'),
    Song('In The End', 'Linkin Park', 321, 'assets/images/03.jpg'),
    Song('Jeremy', 'Pearl Jam', 401, 'assets/images/04.png'),
    Song('Rape Me', 'Nirvana', 201, 'assets/images/01.jpg'),
    Song('Metalingus', 'Alter Bridge', 323, 'assets/images/02.jpg'),
    Song('In The End', 'Linkin Park', 321, 'assets/images/03.jpg'),
    Song('Jeremy', 'Pearl Jam', 401, 'assets/images/04.png'),
    Song('Rape Me', 'Nirvana', 201, 'assets/images/01.jpg'),
    Song('Metalingus', 'Alter Bridge', 323, 'assets/images/02.jpg'),
    Song('In The End', 'Linkin Park', 321, 'assets/images/03.jpg'),
    Song('Jeremy', 'Pearl Jam', 401, 'assets/images/04.png'),
    Song('Rape Me', 'Nirvana', 201, 'assets/images/01.jpg'),
    Song('Metalingus', 'Alter Bridge', 323, 'assets/images/02.jpg'),
    Song('In The End', 'Linkin Park', 321, 'assets/images/03.jpg'),
    Song('Jeremy', 'Pearl Jam', 401, 'assets/images/04.png'),
  ];

  final List<Tmp> tmps = [
    Tmp('Nirvana'),
    Tmp('Nirvana'),
    Tmp('Nirvana'),
    Tmp('Nirvana'),
    Tmp('Nirvana'),
    Tmp('Nirvana'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Deux',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lime,
        accentColor: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Content Manager Page',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/images/05.jpg',
              fit: BoxFit.cover,
            ),
            Container(
              height: 500,
              width: double.infinity,
              child: ListView(
                children: songs.map((e) {
                  return ListTile(
                    title: Text(
                      e.name,
                    ),
                    leading: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        e.artworkFile,
                        fit: BoxFit.contain,
                      ),
                    ),
                    subtitle: Text(
                      e.artist,
                    ),
                    trailing: Container(
                      color: Colors.blue,
                      alignment: Alignment.bottomRight,
                      width: 30,
                      child: FlatButton(
                        child: Icon(Icons.music_note),
                        onPressed: () => print('hello world'),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
