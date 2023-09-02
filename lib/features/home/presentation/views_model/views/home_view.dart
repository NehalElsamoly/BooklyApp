import 'package:booklyapp/features/home/presentation/views_model/views/widgets/book_detail_view.dart';
import 'package:booklyapp/features/home/presentation/views_model/views/widgets/button_actionh.dart';
import 'package:booklyapp/features/home/presentation/views_model/views/widgets/custom_listItem.dart';
import 'package:booklyapp/features/home/presentation/views_model/views/widgets/home_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utlis/assets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:booklyapp/core/utlis/style.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:HomeViewBody(),

    );
  }
}
