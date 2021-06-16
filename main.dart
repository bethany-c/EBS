// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    void _navigateToPlanScreen(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>        PlanScreen()));
  }
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 30.0,
                color: Colors.black
              ),
              onPressed: null,
            ),
            IconButton(
              icon:  Icon(
                Icons.trending_up,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.event_note,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {_navigateToPlanScreen(context);}
            ),
            IconButton(
              icon: Icon(
                Icons.add_circle,
                color: Colors.black,
                size: 30.0,
               ),
                onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: null,
            ),
           ],
        )
      ),
    );
  }
}

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Screen')),
      body: Center(
        child: Text(
          'This is a new screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
