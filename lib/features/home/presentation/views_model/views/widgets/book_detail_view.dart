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
class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers:[
SliverFillRemaining(
  child:
    Scaffold(
        body:    Padding(
          padding: const EdgeInsets.symmetric(horizontal:30.0),
          child: SafeArea(//بتضمن انه يبتدجي بعد الحته الي فوق
              child:Column(

                  children:[
                    const customappbar(),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: width * .35),
                      child: const customItem(),
                    ),
                    Text("jungle adobr Book",style: Styeles.TextStyle30.copyWith(
                        fontWeight: FontWeight.normal
                    )),

                    const SizedBox(
                        height:1.0
                    ),
                    const Opacity(
                        opacity: .5,
                        child: Text("jungle Book",style: Styeles.TextStyle18,)),
                    const SizedBox(
                        height:10
                    ),
                    BookRating(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const bookaction(),
                    Expanded(
                      child: const SizedBox(
                        height: 100,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text( "you can also like ",style:Styeles.TextStyle14.copyWith(
                        color:Colors.white,
                        fontWeight: FontWeight.w700,),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(child: similarlistview()),
                    SizedBox(
                      height: 30,
                    )
                  ]
              )

          ),
        )
    )
)
      ]
    );


  }
}
class customappbar extends StatelessWidget{
  const customappbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[
      IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),

    ]
  );
  }

}
class similarlistview extends StatelessWidget {
  const similarlistview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height:MediaQuery.of(context).size.height*1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
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
