import 'package:file_app_list_interface/data/entity/main_entity.dart';
import 'package:file_app_list_interface/ui/components/my_app_bar.dart';
import 'package:file_app_list_interface/ui/cubit/main_cubit.dart';
import 'package:file_app_list_interface/ui/tools/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MainCubit>().loadInfos();
    context.read<MainCubit>().loadAds();
    context.read<MainCubit>().loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "FiLE"),
      body: Center( 
        child: BlocBuilder<MainCubit, MainEntity>(
          builder: (context, entity) {
            var infoList = entity.infos;
            var adsList = entity.ads;
            var categoriesList = entity.categories;
            if (infoList.isNotEmpty) {
              return Column(
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: infoList.length,
                      itemBuilder: (context,index){
                        return GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: mainColor,
                      height: 70,
                      width: MediaQuery.of(context).size.width*0.5 ,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: infoList[index].icons,
                              ),
                              Column(
                                children: [
                                  Text(
                                    infoList[index].titleText,
                                    style: TextStyle(color: mainColor),
                                  ),
                                  Text(
                                    infoList[index].headerText,
                                    style: TextStyle(color: textColor1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                      })),
                   SizedBox(
                          height: 120,
                          child: PageView.builder(
                            itemCount: adsList.length,
                            itemBuilder: (context,index){
                              var ads = adsList[index];
                            return Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  "images/${ads.image}",
                                  fit: BoxFit.cover,
                                    width: 200,
                                    height: 120,
                                    cacheWidth: 400,  // Piksel bazında yeniden ölçekleme
                                    cacheHeight: 240,),
                              ),
                            );
                          }),
                        ),
                        Expanded(
                          child: GridView.builder(
                            controller: ScrollController(),
                            itemCount: categoriesList.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1/1),
                            itemBuilder: (context,index){
                              var categories = categoriesList[index];
                              return GestureDetector(
                                onTap: () {},
                                child: Card(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "images/${categories.image}",
                                          width: 60,
                                          height: 60,),),
                                        Text(categories.titleName),
                                ],
                              ),
                            ),
                           );}
                          ),
                        ),
                ],
              );
            } else {
              return const Center();
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: textColor1,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: textColor1,), label: 'Ürün Ara'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined,color: textColor1,), label: 'Filem'),
          BottomNavigationBarItem(icon: Icon(Icons.menu,color: textColor1,), label: 'Hesabım'),
        ],
        selectedItemColor: mainColor,
      ),
    );
  }
}
