import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/states.dart';
import 'package:news_app/view/Science.dart';
import 'package:news_app/view/business.dart';
import 'package:news_app/view/sports.dart';

import '../network/remote/dio.dart';

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
    if (index!=currentIndex) {
      currentIndex = index;
      emit(NewsBottomNavState());
    }
  }

  List<dynamic> business = [];

  void getBusiness(){
    if (business.isEmpty) {
      emit(BusinessLoadingState());
      DioHelper.getData('v2/top-headlines', {
        'country': 'us',
        'category': 'business',
        'apiKey': '4ac8555381624a3f9ad06899092d8bef'
      }).then((value) {
        business = value.data['articles'];
        emit(BusinessSuccessState());
      }).onError((e, stackTrace) {
        print("--------Error is $e");
        emit(BusinessErrorState(e.toString()));
      });
    }
  }

  List<dynamic> sports = [];

  void getSports() async{
    emit(SportsLoadingState());
    DioHelper.getData('v2/top-headlines', {
      'country' : 'us',
      'category': 'sports',
      'apiKey': '4ac8555381624a3f9ad06899092d8bef'
    }).then((value) {
      sports = value.data['articles'];
      emit(SportsSuccessState());
    }).onError((e, stackTrace) {
      print("--------Error is $e");
      emit(SportsErrorState(e.toString()));
    });
  }

  List<dynamic> science = [];

  void getScience() async{
    emit(ScienceLoadingState());
    DioHelper.getData('v2/top-headlines', {
      'country' : 'us',
      'category': 'science',
      'apiKey': '4ac8555381624a3f9ad06899092d8bef'
    }).then((value) {
      science = value.data['articles'];
      emit(ScienceSuccessState());
    }).onError((e, stackTrace) {
      print("--------Error is $e");
      emit(ScienceErrorState(e.toString()));
    });
  }

}