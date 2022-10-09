import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/network/remote/dio.dart';
import 'package:news_app/view/NewsLayout.dart';

import 'bloc/observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            actionsIconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark)),
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.black, fontSize: 16.0),
          bodyText1: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              overflow: TextOverflow.ellipsis),
          bodyText2: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
        primarySwatch: Colors.deepOrange,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey),
      ),
      darkTheme: ThemeData(
          canvasColor: HexColor('0f151f'),
          appBarTheme: AppBarTheme(
              color: HexColor('0f151f'),
              elevation: 0.0,
              actionsIconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: HexColor('0f151f'),
                  statusBarIconBrightness: Brightness.light)),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                overflow: TextOverflow.ellipsis),
            bodyText2: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
          primarySwatch: Colors.deepOrange,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey)),
      themeMode: ThemeMode.light,
      home: BlocProvider(
        create: (BuildContext context) => MyCubit(),
        child: const NewsLayout(),
      ),
    );
  }
}
