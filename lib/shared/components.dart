import 'package:flutter/cupertino.dart';

Widget listViewBuilder() => Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                        'title titletitletitletitletitletitletitle titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle'),
                  ),
                  Text('date'),
                ],
              ),
            ),
          )
        ],
      ),
    );
