import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/cubit.dart';
import 'package:news_app/bloc/states.dart';

import '../shared/components.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyCubit, NewsStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          return ListView.separated(
              itemBuilder: (context, index) => listViewBuilder(),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 3);
        });
  }
}
