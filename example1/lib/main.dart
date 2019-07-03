import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'IIT Mad Camp Summer 2019'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal,
        ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Congrats on your first pull! We are proud of you!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              Image(
                image: AssetImage('images/flutter.jpg'),
                height:350.0,
                width:500.0,
              ),
            ],
          ),
        ),
      ),
   // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
