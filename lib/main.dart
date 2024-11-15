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
      theme: ThemeData(
          fontFamily: 'Hind',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.black)),
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
                  SizedBox(
                    height: 400,
                    child: HorizontalAssetScroll(),
                  ),

                  SizedBox(height: 16), //spacer

                  //font variations, may need to use listview to create gap in between? or something else
                  ListTile(
                    tileColor: Colors.pink[50],
                    title: Text(
                      'Image credit:',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.pink),
                    ),
                    subtitle: Text('Girl with red hat on Unsplash'),
                    leading: CircleAvatar(
                      backgroundColor: Colors.pink[400],
                      child:
                          Icon(Icons.camera_alt_outlined, color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 8),

                  ListTile(
                    tileColor: Colors.pink[50],
                    leading: CircleAvatar(
                      backgroundColor: Colors.pink[400],
                      child: Icon(Icons.sentiment_satisfied_alt_outlined,
                          color: Colors.white),
                    ),
                    title: Text(
                      'Hind bold',
                      style: TextStyle(

                          // fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          fontSize: 20),
                    ),
                  ),

                  SizedBox(height: 8),

                  ListTile(
                    tileColor: Colors.pink[50],
                    leading: CircleAvatar(
                      backgroundColor: Colors.pink[400],
                      child: Icon(Icons.fastfood_outlined, color: Colors.white),
                    ),
                    title: Text(
                      'Hind medium',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.pink,
                          fontSize: 20),
                    ),
                  ),

                  SizedBox(height: 8),

                  ListTile(
                    tileColor: Colors.pink[50],
                    leading: Icon(Icons.font_download_outlined,
                        color: Colors.pink[400]),
                    trailing: Icon(
                      Icons.font_download_rounded,
                      color: Colors.pink[400],
                    ),
                    title: Text(
                      'System font: Noto',
                      style: TextStyle(
                          fontFamily: 'Noto',
                          fontWeight: FontWeight.normal,
                          color: Colors.pink,
                          fontSize: 20),
                    ),
                  ),

                  SizedBox(height: 16), //spacer

                  // network images
                  SizedBox(height: 400, child: HorizontalNetworkScroll()),
                ],
              ),
            ),
          )),
    );
  }
}

//using builder and network images
class HorizontalNetworkScroll extends StatelessWidget {
  const HorizontalNetworkScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://images.unsplash.com/photo-1647850436017-55cf81609d95?q=80&w=2229&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1601678799604-62fb3b9ec8fe?q=80&w=2186&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1647296848101-4842ad263d25?q=80&w=2204&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
    ];

    return ListView.builder(
      itemCount: imageUrls.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.network(
          imageUrls[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//using assets and regular listview, not builder
class HorizontalAssetScroll extends StatelessWidget {
  const HorizontalAssetScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
            'images/girl-with-red-hat-burger.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
            'images/girl-with-red-hat-bunny.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(
            'images/girl-with-red-hat-boots.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
