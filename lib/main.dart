import 'package:file_app_list_interface/ui/cubit/main_cubit.dart';
import 'package:file_app_list_interface/ui/screens/main_screen.dart';
import 'package:file_app_list_interface/ui/tools/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MainCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(   
          colorScheme: ColorScheme.fromSeed(seedColor: textColor2),
        ),
        home: const MainScreen(),
      ),
    );
  }
}

