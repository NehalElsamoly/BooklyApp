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
import 'home_view_body.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical:40),
      child: Row(
          children: [
            Image.asset(AssetsData.logo,
              height: 30.0,
            ),
            const Spacer(),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Search_view_body()));
            }, icon:
            const Icon(
              // FontAwesomeIcons.accessibleIcon,
              //  size:30,
              Icons.search,
              size:26,
            )
            ),
          ]
      ),
    );
  }

}