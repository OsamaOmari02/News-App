import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/bloc/states.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MyCubit(),
      child: BlocConsumer<MyCubit, NewsStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = MyCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: const Text("News App"),
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: cubit.currentIndex,
                  items: cubit.bottom,
                  onTap: (index) => cubit.changeBottomNavBar(index)),
            );
          }),
    );
  }
}
