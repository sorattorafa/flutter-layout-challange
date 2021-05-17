import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ColorizedMatrix(
                windownWidth: constraints.maxWidth, windownHeight: constraints.maxHeight);
          }
        ));
  }
}

class ColorizedMatrix extends StatelessWidget {
  const ColorizedMatrix({
    Key? key,
    required this.windownWidth,
    required this.windownHeight,
  }) : super(key: key);

  final double windownWidth;
  final double windownHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          top: 0,
          right: windownWidth / 3,
          bottom: windownHeight * (2 / 3),
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text('1'),
            ),
          ),
        ),
        Positioned(
          left: windownWidth * (2 / 3),
          top: 0,
          right: 0,
          bottom: windownHeight / 3,
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text('2'),
            ),
          ),
        ),
        Positioned(
          left: windownWidth / 3,
          top: windownHeight * (2 / 3),
          right: 0,
          bottom: 0,
          child: Container(
            color: Colors.yellow,
            child: Center(
              child: Text('3'),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: windownHeight / 3,
          right: windownWidth * (2 / 3),
          bottom: 0,
          child: Container(
            color: Colors.deepOrange,
            child: Center(
              child: Text('4'),
            ),
          ),
        ),
        Positioned(
          left: windownWidth / 3,
          top: windownHeight / 3,
          right: windownWidth / 3,
          bottom: windownHeight / 3,
          child: Container(
            color: Colors.pink,
            child: Center(
              child: Text('5'),
            ),
          ),
        ),
      ],
    );
  }
}

class MyText extends StatelessWidget {
  MyText({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
