import 'package:booklyapp/features/search/presntation/views/widget/Search_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Search_view_body())
    );
  }
}
