import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac=0;
  bool kontrol = false;

  Future<int> toplama(int sayi1,int sayi2) async { //asenkron fonksiyon oluşturma işlemi
    int toplam = sayi1 + sayi2;
    return toplam;
  }


  @override
  void initState() {
    // TODO: implement initState
    //sayfa ilk açıldığında çalışır,1 kere çalışır
    super.initState();
    print("inisState çalıştı");
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("sonuc :$sayac"),
            ElevatedButton(onPressed: (){
              setState(() { //setState sürekli sayfayı günceller build metodunu harekete geçirir
                sayac+=1;

              });


            }, child:const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = kisiler(ad: "Ahmet", yas: 23, boy: 1.84, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OyunEkrani(kisi: kisi)))
                  .then((value) {
                 print("anasayfaya dönüldü"); //anasayfaya dönmeyi goruntulemek için

              });


            }, child:const Text("Başla")),
            Visibility(visible: kontrol,child:const Text("Merhaba")),
            Text(kontrol ?"Merhaba":"Güle Güle", //false ise (:) sonraki kısım çalışır
              style: TextStyle(color: kontrol ? Colors.blue:Colors.red),),
            ((){
              if (kontrol){
                return const Text("merhaba",style: TextStyle(color: Colors.blue),);

              }
              else{
                return const Text("merhaba",style: TextStyle(color: Colors.blue),);


              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() { //setState sürekli sayfayı günceller build metodunu harekete geçirir
             kontrol=true;});
            }, child:const Text("Durum 1 True")),
            ElevatedButton(onPressed: (){
              setState(() { //setState sürekli sayfayı günceller build metodunu harekete geçiri
                kontrol=false;});
            }, child:const Text("Durum 1 False")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("Hata oluştu");
                }
                if (snapshot.hasData) {
                  return  Text("Sonuc: ${snapshot.data}");
                }
                else {
                  return const Text("Sonuc yok");
                }
              },
            )





          ],
        ),
      ) ,

    );
  }
}
