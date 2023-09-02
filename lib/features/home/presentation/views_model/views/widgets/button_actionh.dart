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

import 'home_view_body.dart';
class bookaction extends StatelessWidget {
  const bookaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(child: custombutton(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(20)),
              backgroundcolor: Colors.white,
              textcolor: Colors.black,
              text:"19.99 &"
          )),
          Expanded(child: custombutton(
            borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(20)),
            backgroundcolor: Colors.orangeAccent,
            textcolor: Colors.white, text:"Free preview",
          )),
        ],
      ),
    );
  }
}
class custombutton extends StatelessWidget{
  const custombutton({Key? key,  this.borderRadius, required this.textcolor, required this.backgroundcolor, required this.text}) : super(key: key);
  final BorderRadius ?borderRadius;
  final Color textcolor;
  final Color backgroundcolor;
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height:48,
      child: TextButton(onPressed: (){

      },
          style:TextButton.styleFrom(
              backgroundColor:backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius?? BorderRadius.circular(12)
              )
          ),
          child: Text("$text"

            , style:Styeles.TextStyle16.copyWith(color:textcolor),
          )
      ),
    );
  }

}
