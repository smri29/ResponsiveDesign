import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => RiApp(), // Wrap your app
  ),);
}

class RiApp extends StatelessWidget {
  const RiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueGrey,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.white54,
          ),
        ),
      ),
    );// scaffold
  }
}