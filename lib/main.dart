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
      body: Column(
        children: [
          /*Flexible(
            flex: 2,
            child: Container(
              color: Colors.blueGrey,
              //height: MediaQuery.of(context).size.height,
              width: 200,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.deepOrangeAccent,
              //height: 200,
              width: 200,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
              //height: 200,
              width: 200,
            ),
          ),*/
          /*Expanded(
            child: Container(
              color: Colors.blue,
              //height: 200,
              width: 200,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              //height: 200,
              width: 200,
            ),
          ),*/
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Colors.cyan,
            ),
          )
        ],
      ),
    );// scaffold
  }
}