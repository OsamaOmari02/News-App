import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget articleBuilder(list, context) => Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: NetworkImage(list['urlToImage']),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: SizedBox(
              height: 120.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      list['title'],
                      style: Theme.of(context).textTheme.bodyText1,
                      maxLines: 4,
                    ),
                  ),
                  Text(
                    list['publishedAt'],
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

Widget listViewBuilder(list) => ListView.separated(
    itemBuilder: (context, index) => articleBuilder(list[index], context),
    separatorBuilder: (context, index) => myDivider(),
    itemCount: list.length);

Widget myDivider() => const Divider(color: Colors.grey,thickness: 0.5);