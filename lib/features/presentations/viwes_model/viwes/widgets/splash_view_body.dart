import 'package:booklyapp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booklyapp/core/utlis/assets.dart';

import '../../../../home/presentation/views_model/views/home_view.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation <Offset>slideAnimation;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  void initState(){
    super.initState();
  animationController=AnimationController(vsync: this,duration:Duration(seconds:3));
slideAnimation=Tween<Offset>(begin:Offset(0,10) ,end:Offset(0,-6) ).animate(animationController);
animationController.forward();

     navigateToHome();
// slideAnimation.addListener(() {
//   setState(() {
//
//   });
// });
  }
  void navigateToHome(){
    Future.delayed(Duration(seconds: 1),(){
//   Get.to(()=>HomeView(),transition:Transition.fade,duration: ktransitionDuration);
      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeView()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          AnimatedBuilder(
            animation: slideAnimation,
            builder: (context,_) {
              return SlideTransition(
                  position:slideAnimation,
                child:  Text('Read  Our Free Books',textAlign: TextAlign.center,),
    );
            }
          ),

        ],
      )
    );
  }
}
