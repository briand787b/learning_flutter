import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';

main() => runApp(Client());

class Client extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClientState();
  }
}

class _ClientState extends State<Client> {
  void _printResponse() async {
    print('api call was made');
    final req = await HttpClient().get('192.168.1.26', 8080, '/');
    final res = await req.close();
    await for (var contents in res.transform(Utf8Decoder())) {
      print(contents);
    }
    
    print('done');
  }
  
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: 'Client',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: RaisedButton(
          child: Text('Make API Call'),
          onPressed: this._printResponse,
        ),
      ),
    );
  }
}
