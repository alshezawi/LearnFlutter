import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink[200]),
      home: Scaffold(
        appBar: AppBar(title: Text('Awesome app')),
        body: Container(
          child: Column(
            children: <Widget>[
               ListTile(
          title: Text('data'),
        ), ListTile(
          title: Text('data'),
        )
            ],
          ),
        )
         
      ),
    );
  }
}
