import 'package:file_app_list_interface/data/entity/ads.dart';
import 'package:file_app_list_interface/data/entity/categories.dart';
import 'package:file_app_list_interface/data/entity/infos.dart';
import 'package:file_app_list_interface/ui/tools/app_colors.dart';
import 'package:flutter/material.dart';

class InfoDaoRepository {

  Future<List<Info>> loadInfos() async {
    var infoList = <Info>[];
    var info1 = Info(id: 1, titleText: "Adres", headerText: "Ev", icons: Icon(Icons.location_on_outlined,color: mainColor,));
    var info2 = Info(id: 2, titleText: "En Yakın Teslimat", headerText: "Çar 10:00-12:00", icons: Icon(Icons.watch_later_outlined, color: mainColor,));

    infoList.add(info1);
    infoList.add(info2);

    return infoList;
  }

  Future<List<Ads>> loadAds() async {
    var adsList = <Ads>[];
    var ads1 = Ads(image: "et_gorsel.png");
    var ads2 = Ads(image: "sebze_gorsel.png");
    var ads3 = Ads(image: "unlu_gorsel.png");

    adsList.add(ads1);
    adsList.add(ads2);
    adsList.add(ads3);

    return adsList;
  }

  Future<List<Categories>> loadCategories() async {
    var categoriesList = <Categories>[];
    var category1 = Categories(id: 1, titleName: "Yeni Ürünlerimiz", image: "yeni.png");
    var category2 = Categories(id: 2, titleName: "Fırsatlar", image: "firsatlar.png");
    var category3 = Categories(id: 3, titleName: "Meyve Sebze", image: "meyve_sebze.png");
    var category4 = Categories(id: 4, titleName: "Et Tavuk Balık", image: "et_tavuk.png");
    var category5 = Categories(id: 5, titleName: "İçecek", image: "icecek.png");
    var category6 = Categories(id: 6, titleName: "Kahvaltılık Şarküteri", image: "kahvaltilik.png");
    var category7 = Categories(id: 7, titleName: "Süt ve Süt ürünleri", image: "sut_urunleri.png");
    var category8 = Categories(id: 8, titleName: "Temel Gıda", image: "temel_gida.png");
    var category9 = Categories(id: 9, titleName: "Fırın Pastane", image: "firin.png");
    var category10 = Categories(id: 10, titleName: "Atıştırmalık", image: "atistirmalik.png");
    var category11 = Categories(id: 11, titleName: "Hazır Yemek", image: "hazir_yemek.png");
    var category12 = Categories(id: 12, titleName: "Dondurma", image: "dondurma.png");
    var category13 = Categories(id: 13, titleName: "Kişisel Bakım", image: "kisisel_bakim.png");
    var category14 = Categories(id: 14, titleName: "Kağıt ürünleri", image: "kagit.png");
    var category15 = Categories(id: 15, titleName: "Ev Temizliği", image: "temizlik.png");
    var category16 = Categories(id: 16, titleName: "Mutfak Malzemeleri", image: "mutfak.png");
    var category17 = Categories(id: 17, titleName: "Bebek", image: "bebek.png");
    var category18 = Categories(id: 18, titleName: "Glutensiz", image: "glutensiz.png");
    var category19 = Categories(id: 19, titleName: "Evcil Dostlar", image: "evcil_dostlar.png");


    categoriesList.add(category1);
    categoriesList.add(category2);
    categoriesList.add(category3);
    categoriesList.add(category4);
    categoriesList.add(category5);
    categoriesList.add(category6);
    categoriesList.add(category7);
    categoriesList.add(category8);
    categoriesList.add(category9);
    categoriesList.add(category10);
    categoriesList.add(category11);
    categoriesList.add(category12);
    categoriesList.add(category13);
    categoriesList.add(category14);
    categoriesList.add(category15);
    categoriesList.add(category16);
    categoriesList.add(category17);
    categoriesList.add(category18);
    categoriesList.add(category19);

    return categoriesList;

  }
}