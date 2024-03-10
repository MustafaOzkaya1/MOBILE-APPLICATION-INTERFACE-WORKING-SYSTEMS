import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_baglanti/anasayfa.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(onPressed: (){
          print("App bar geri tuşu seçildi");
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
        },


            icon: const Icon(Icons.arrow_back_ios_new) ),
      ),
      backgroundColor: Colors.white,
      body: 
      Center(
        child: Column(
          children: [
            Text("Sayfa Y",style: TextStyle(fontSize: 30,color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
