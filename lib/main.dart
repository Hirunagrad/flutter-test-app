import 'package:flutter/material.dart';
import 'package:flutter_session1/pages/firstpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hiruna Gayashan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash());
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FirstPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Text('Flutter sample App'),
      ),
    ));
  }
}
