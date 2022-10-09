import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/bloc/states.dart';
import 'package:news_app/network/local/shared_preferences.dart';
import 'package:news_app/network/remote/dio.dart';
import 'package:news_app/shared/constants.dart';
import 'package:news_app/view/NewsLayout.dart';

import 'bloc/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  var fromPref = CacheHelper.getBool('isDark');

  runApp(MyApp(fromPref));
}

class MyApp extends StatelessWidget {
  final bool fromPref;
  const MyApp(this.fromPref, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyCubit>(
      create: (BuildContext context) => MyCubit()..changeAppMode(fromPref)..getBusiness()..getSports()..getScience(),
      child: BlocConsumer<MyCubit,NewsStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: MyCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
          home: const NewsLayout(),
        ),
      ),
    );
  }
}
