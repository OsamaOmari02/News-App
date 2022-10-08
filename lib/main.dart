import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/view/NewsLayout.dart';

import 'bloc/observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            actionsIconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.white)),
        primarySwatch: Colors.deepOrange,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed),
      ),
      darkTheme: ThemeData(),
      themeMode: ThemeMode.light,
      home: BlocProvider(
        create: (BuildContext context) => MyCubit(),
        child: const NewsLayout(),
      ),
    );
  }
}
