import 'package:booklyapp/core/utlis/assets.dart';
import 'package:flutter/cupertino.dart';

class customItem extends StatelessWidget {

  const customItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.8/4,
      child: Container(

        //   height:MediaQuery.of(context).size.height*.25 ,
        //    width: 50.0,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            //  color: Colors.red,
            image:DecorationImage(
              fit: BoxFit.fitWidth,
              image:AssetImage(AssetsData.test),
            )
            ,)
      ),
    );
  }
}