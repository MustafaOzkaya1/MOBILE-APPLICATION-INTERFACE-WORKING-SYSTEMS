import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text(
              "Sayfa A",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaB()));


            }, child: const Text("Sayfa B'ye ilerle")),
          ],

        ),
      ),
    );
  }
}
