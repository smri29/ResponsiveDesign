import 'package:flutter/material.dart';
void main(){
  runApp(RiApp());
}

class RiApp extends StatelessWidget {
  const RiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 6,
            children: [
              Text('Roman Reigns'),
              Text('Dean Ambrose'),
              Text('Seth Rollins'),
              Text('John Cena'),
              Text('Triple H'),
              Text('Dwayne Rock'),
              Text('Undertaker'),
              Text('Stone Cold Steve Austin'),
              Text('Jacob Fatu'),
              Text('Solo Sikoa'),
            ],
          )
        ],
      ),
    );
  }
}
