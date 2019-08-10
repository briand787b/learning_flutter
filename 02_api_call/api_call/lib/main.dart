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
  final _httpClient = HttpClient();
  var _responses = <Text>[];

  void _printResponse() async {
    print('api call was made');
    final req = await this._httpClient.get('tv.local', 8080, '/');
    final res = await req.close();
    await for (var contents in res.transform(Utf8Decoder())) {
      setState(() => this._responses.add(Text(contents)));
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
        body: Column(
          children: [
            RaisedButton(
              child: Text('Make API Call'),
              onPressed: this._printResponse,
            ),
            Row(
              children: this._responses,
            ),
            RaisedButton(
              child: Text('reset'),
              onPressed: () => setState(this._responses.clear),
            )
          ],
        ),
      ),
    );
  }
}
