import 'package:file_app_list_interface/ui/tools/app_colors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/logo-Photoroom.png',
          height: 25,),
          Text(title,style: TextStyle(
            color: textColor2, 
            fontSize: 26,
            fontFamily: "PoetsenOne"),),
        ],
      ),  
      backgroundColor: mainColor,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.message),color: textColor2,),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: textColor2,))
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(50);
}