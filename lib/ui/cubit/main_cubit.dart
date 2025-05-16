import 'package:file_app_list_interface/data/entity/main_entity.dart';
import 'package:file_app_list_interface/data/repo/info_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainEntity> {
  MainCubit():super(MainEntity(infos: [], ads: [], categories: []));
  var infoDaoRepository = InfoDaoRepository();

  Future<void> loadInfos() async {
    var list = await infoDaoRepository.loadInfos();
    emit(state.copyWith(infos: list));
  }

  Future<void> loadAds() async {
    var list = await infoDaoRepository.loadAds();
    emit(state.copyWith(ads: list));
  }

  Future<void> loadCategories() async {
    var list = await infoDaoRepository.loadCategories();
    emit(state.copyWith(categories: list));
  }

}