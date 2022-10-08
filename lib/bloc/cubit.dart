import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/states.dart';
import 'package:news_app/view/Science.dart';
import 'package:news_app/view/business.dart';
import 'package:news_app/view/sports.dart';

class MyCubit extends Cubit<NewsStates>{
  MyCubit() : super (InitialState());

  static MyCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottom = [
    const BottomNavigationBarItem(icon: Icon(Icons.business),label: "Business"),
    const BottomNavigationBarItem(icon: Icon(Icons.sports_baseball_rounded),label: "Sports"),
    const BottomNavigationBarItem(icon: Icon(Icons.science),label: "Science"),
  ];

  List<Widget> screens = const [
    Business(),
    Sports(),
    Science(),
  ];

  changeBottomNavBar(index){
    currentIndex = index;
    emit(NewsBottomNavState());
  }


}