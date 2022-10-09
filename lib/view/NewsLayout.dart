import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/bloc/states.dart';

import 'Search.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MyCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("News App"),
              actions: [
                IconButton(
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Search())),
                    icon: const Icon(Icons.search)),
                IconButton(
                    onPressed: () => cubit.changeAppMode(),
                    icon: const Icon(Icons.dark_mode_outlined))
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                items: cubit.bottom,
                onTap: (index) => cubit.changeBottomNavBar(index)),
          );
        });
  }
}
