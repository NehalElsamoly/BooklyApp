import 'package:booklyapp/features/home/presentation/views_model/views/widgets/book_detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utlis/assets.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:booklyapp/core/utlis/style.dart';

import 'home_view_body.dart';
class BestSellerList extends StatelessWidget{
  const BestSellerList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //   throw UnimplementedError();
    return GestureDetector(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>BookDetail()));
      } ,
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // Image.asset(AssetsData.test),
            AspectRatio(
              aspectRatio:2/4,
              child: Container(

                //   height:MediaQuery.of(context).size.height*.25 ,
                //    width: 50.0,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //  color: Colors.red,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage(AssetsData.test),
                    )
                    ,)
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  SizedBox(
                    width:MediaQuery.of(context).size.width*.5,
                    child: Text(
                        "Harry botter and goblet is fire jnvijsdovnbdoiv noxn lnxlk nxkl",style:Styeles.TextStyle20.copyWith(fontFamily: kGSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "nehal elsamoly",style:Styeles.TextStyle14,

                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                      children:[
                        Text(
                          "19.0 LE",style:Styeles.TextStyle20.copyWith(
                          fontWeight:FontWeight.bold,
                          fontSize: 17,
                        ),

                        ),
                        // const Spacer(),
                        SizedBox(
                          width: 30.0,
                        ),
                        BookRating(),

                      ]
                  )
                ]
            )
          ],
        ),
      ),
    );
  }

}