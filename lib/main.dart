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

    //Media Query
    MediaQueryData mediaQuery = MediaQuery.of(context);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.height);
    print(mediaQuery.size.width);
    print(mediaQuery.size.shortestSide);
    print(mediaQuery.size.longestSide);
    print(mediaQuery.size.flipped);
    print(mediaQuery.devicePixelRatio);

    if(mediaQuery.size.width < 640){
      print('This is a Smart Phone');
    }
    else if (mediaQuery.size.width > 640 && mediaQuery.size.width <1080){
      print('This is a Tablet');
    }
    else{
      print('This is a TV');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: OrientationBuilder(
        builder: (context, Orientation orientation) {
          print(orientation);
          if (orientation == Orientation.portrait){
            return Column(
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
                ),
                Text(orientation.name),
              ],
            );
          }
          else{
            return Center(
              child: Text('To Big Screen'),
            );
          }
        }
      ),
    );
  }
}
