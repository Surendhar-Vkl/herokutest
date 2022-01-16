import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Sulal Panthu'),
            backgroundColor: Colors.indigo,
          ),
          backgroundColor: Colors.blue,
          body: panthu())));
}

class panthu extends StatefulWidget {
  const panthu({Key? key}) : super(key: key);

  @override
  _panthuState createState() => _panthuState();
}

class _panthuState extends State<panthu> {
  var num = 1;
  void randi() {
    setState(() {
      num = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  randi();
                },
                child: Image.asset('images/ball$num.png')),
          )
        ],
      ),
    );
  }
}
