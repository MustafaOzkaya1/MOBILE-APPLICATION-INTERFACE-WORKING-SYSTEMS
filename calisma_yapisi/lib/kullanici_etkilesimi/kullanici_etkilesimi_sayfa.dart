import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() => _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){ //SAYFANIN ALTINDA UYARI VERMEK İÇİN KULLANILAN YAPI
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: const Text("Silmek İstiyor Musunuz ?",style: TextStyle(color: Colors.indigoAccent),),
                  backgroundColor: Colors.white,
                  action: SnackBarAction(label: "Evet",textColor: Colors.red, onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content:
                        const Text("Silindi",style: TextStyle(color: Colors.red),),
                          backgroundColor: Colors.white,
                        ));

                  },),
                  )
              );
            }, child: const Text("Snackbar")),
            ElevatedButton(onPressed: (){

            }, child: const Text("Snackbar (özel)")),


            ElevatedButton(onPressed: (){ //SAYFANIN ÜSTÜNDE UYARI VERMEK İÇİN KULLANILAN YAPI
              showDialog(
                  context: context,
                  builder: (BuildContext){
                return AlertDialog(
                  title: const Text("Başlk"),
                  content: const Text("İçerik"),
                  actions: [
                    TextButton(onPressed: (){
                      print("iptal seçildi");
                      Navigator.pop(context);

                    }, child: const Text("iptal")),
                    TextButton(onPressed: (){
                      print("tamam seçildi");
                      Navigator.pop(context);

                    }, child: const Text("Tamam")),
                  ],
                );

                  }

              );

            }, child: const Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (BuildContext){
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(controller: tfControl,decoration: const InputDecoration(hintText: "Veri") ,),//İÇERİSİNE VERİ GİRİLDİĞİNDE KAYBOLAN YAZI
                      backgroundColor: Colors.grey,
                      actions: [
                        TextButton(onPressed: (){
                          print("iptal seçildi");
                          Navigator.pop(context);

                        }, child: const Text("iptal",style: TextStyle(color: Colors.black ),)),
                        TextButton(onPressed: (){
                          print("Alınan veri : ${tfControl.text}");
                          Navigator.pop(context);
                          tfControl.text="";

                        }, child: const Text("Kaydet",style: TextStyle(color: Colors.black),)),
                      ],
                    );

                  }

              );

            }, child: const Text("Alert(özel)")),

          ],

        ),
      )

    );
  }
}
