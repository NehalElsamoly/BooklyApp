import 'package:booklyapp/features/home/presentation/views_model/views/widgets/book_detail_view.dart';
import 'package:booklyapp/features/home/presentation/views_model/views/widgets/button_actionh.dart';
import 'package:booklyapp/features/home/presentation/views_model/views/widgets/custom_listItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utlis/assets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:booklyapp/core/utlis/style.dart';

import '../../../../../search/presntation/views/widget/Search_view_body.dart';
import 'best-seller-list-vciew.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';
import 'home_view_body.dart';//هنا بقي بنعمل list items
class listItems extends StatelessWidget {
  const listItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height:MediaQuery.of(context).size.height*.30,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context,index){
            //  listItems.Scrollable = true;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const customItem(),

            );
          }
      ),
    );
  }
}