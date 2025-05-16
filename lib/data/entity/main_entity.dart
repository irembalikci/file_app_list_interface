import 'package:file_app_list_interface/data/entity/ads.dart';
import 'package:file_app_list_interface/data/entity/categories.dart';
import 'package:file_app_list_interface/data/entity/infos.dart';

class MainEntity {
  final List<Info> infos;
  final List<Ads> ads;
  final List<Categories> categories;

  MainEntity({required this.infos, required this.ads, required this.categories});

  // Kopyalama metodu (güncellerken kullanışlı)
  MainEntity copyWith({List<Info>? infos, List<Ads>? ads, List<Categories>? categories}) {
    return MainEntity(
      infos: infos ?? this.infos,
      ads: ads ?? this.ads,
      categories: categories ?? this.categories,
    );
  } 
}