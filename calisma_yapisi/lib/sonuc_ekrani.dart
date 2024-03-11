import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SonucErkrani extends StatefulWidget {
  const SonucErkrani({super.key});

  @override
  State<SonucErkrani> createState() => _SonucErkraniState();
}

class _SonucErkraniState extends State<SonucErkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuc Ekranı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);

            }, child:const Text("Geri Dön")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);

            }, child:const Text("Anasayfaya Geri Dön")),


          ],
        ),
      ) ,

    );
  }
}
