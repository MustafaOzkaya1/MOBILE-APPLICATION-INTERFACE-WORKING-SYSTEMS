import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_x.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sayfa B",style: TextStyle(fontSize: 30,color: Colors.black),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaY()));

            }, child: const Text("Sayfa Y'ye ilerle")),

          ],
        ),
      ),
    );
  }
}
