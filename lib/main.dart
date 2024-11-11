import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "basic flutter app; A1",
      theme: ThemeData(fontFamily: 'Hind'),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Images & Assets'),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                //content for the whole page here
                children: [
                  //asset images
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [],
                  ),

                  //font variations, may need to use listview to create gap in between? or something else
                  ListTile(),

                  //network images
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
