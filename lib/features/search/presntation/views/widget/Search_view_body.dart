import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views_model/views/widgets/home_view_body.dart';


class Search_view_body extends StatelessWidget {
  const Search_view_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal:30.0),
        child: Column(
            children:[
              SreachTextFormField(),
              BestSellerListView()
            ]
        ),
      ),
    );
  }
}

class SreachTextFormField extends StatelessWidget {
  const SreachTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: const InputDecoration(
focusedBorder: OutlineInputBorder(      borderSide:BorderSide(
  color:  Colors.pink,
),),
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
            color:  Colors.white,
          ),

              borderRadius:  BorderRadius.all(Radius.circular(8.0)),       // borderRadius: BorderRadius.circular(12)
          ),
          hintText: "search",
          // suffixIcon:   IconButton(onPressed:(){
          //
          // }, icon:
          // const Icon(
          //   // FontAwesomeIcons.accessibleIcon,
          //   //  size:30,
          //   Icons.search,
          //   size:26,
          // )
          // ),
        ),
      ),
    );
  }
}

