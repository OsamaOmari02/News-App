import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/bloc/states.dart';
import 'package:news_app/shared/components.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyCubit>(
      create: (BuildContext context) => MyCubit(),
      child: BlocConsumer<MyCubit, NewsStates>(
          listener: (BuildContext context, Object? state) {},
          builder: (BuildContext context, state) {
            var list = MyCubit.get(context).search;
            return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: searchController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Type something";
                        }
                        return null;
                      },
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        label: Text("Search"),
                        hintText: 'Enter a search term',
                      ),
                      onChanged: (value) =>
                          MyCubit.get(context).onSearch(value),
                    ),
                  ),
                  Expanded(
                      child: state is LoadingState
                          ? const Center(child: CircularProgressIndicator())
                          : listViewBuilder(list)),
                ],
              ),
            );
          }),
    );
  }
}
