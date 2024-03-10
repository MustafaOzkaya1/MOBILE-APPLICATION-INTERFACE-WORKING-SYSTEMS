import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sayfalar_arasi_baglanti/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sayfa X",style: TextStyle(fontSize: 30,color: Colors.black),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SayfaY()));
            }, child: const Text("Sayfa Y'ye ilerle"),),

          ],
        ),
      ),
    );
  }
}
