import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final value = 'I am value';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello 1'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('To Second'),
          onPressed: (){
            Navigator
              .of(context)
              .push(MaterialPageRoute(builder: (_) => SecondScreen(value: value)));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  SecondScreen({this.value: 'Test'});
  final String value;

  @override
  SecondScreenState createState() => new SecondScreenState(value);

}

class SecondScreenState extends State<SecondScreen> {
  String _value;
  SecondScreenState(this._value);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello 2'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back to One: ${_value}'),
          onPressed: (){
            Navigator
              .of(context)
              .pop();
          },
        ),
      ),
    );
  }
}

