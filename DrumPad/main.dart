import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrumPad',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'DrumPad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final oynatici = AudioCache();
  final player = AudioPlayer();
  AudioPlayer audioPlugin = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Center(child: Text(widget.title)),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 5 ),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          childAspectRatio: 62/50,),
          children: [
            kutu(Colors.red, "bip.wav"),
            kutu(Colors.brown,"bongo.wav"),
            kutu(Colors.amber,"clap1.wav"),
            kutu(Colors.deepOrangeAccent,"clap2.wav"),
            kutu(Colors.teal,"clap3.wav"),
            kutu(Colors.purple,"crash.wav"),
            kutu(Colors.limeAccent,"how.wav"),
            kutu(Colors.greenAccent,"ridebel.wav"),

          ]

          ,),
      )
    );
  }
   kutu (Color, String ses ) {
    return
    GestureDetector(onTap:(){

      oynatici.play(ses);

    },
        child: Container(color: Color ));
   }

}
