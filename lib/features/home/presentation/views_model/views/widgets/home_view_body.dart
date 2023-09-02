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

import 'best-seller-list-vciew.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';
import 'home_view_body.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const CustomAppBar(),
    // customItem(),
    const listItems(),//featured
    const SizedBox(
    height: 5.0,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text('Best Seller',
      style:Styeles.TextStyle30.copyWith(fontFamily: kGSectraFine),
      ),
    ),
    const SizedBox(
    height: 20.0,
    ),
    // BestSellerList(),
    // BestSellerListView(),
    ],
    ),
        ),
    const SliverToBoxAdapter(
    child:
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: BestSellerListView(),
    ),
    )],
    );

  }
}


class BookRating extends StatelessWidget{
  var mainAxisAlignment;

   BookRating({super.key,this.mainAxisAlignment=MainAxisAlignment.start});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        const Icon(
            FontAwesomeIcons.solidStar,
            size:14,
            color: Colors.yellow
        ),
        const Text(
          "4.8",style: Styeles.TextStyle16,
        ),

        const Text(
          "225",style: Styeles.TextStyle14,
        )
      ],
    );
  }

}
class BestSellerListView extends StatelessWidget{
  const BestSellerListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
          itemBuilder: (context,index){

        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerList(),
        );
      }),
    );
  }
}




