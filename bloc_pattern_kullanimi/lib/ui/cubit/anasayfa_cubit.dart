import 'package:bloc_pattern_kullanimi/data/repo/Matematikrepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit(): super(0);//varsayılan deger
var mrepo = MatematikRepository();
void toplamaYap(String alinanSayi1,String alinanSayi2){
  emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2)); // tetikleme ve veri gönderme
}
  void carpmaYap(String alinanSayi1,String alinanSayi2){
    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2));
  }
}