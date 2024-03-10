import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_a.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : const Text("Anasayfa")),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA()));


          }, child: const Text("Sayfa A'ya ilerle")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaX()));


          }, child: const Text("Sayfa X'e ilerle")),

        ],
      ),
    ) ,
    );
  }
}
