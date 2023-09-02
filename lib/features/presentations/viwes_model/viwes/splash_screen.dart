import 'package:booklyapp/features/presentations/viwes_model/viwes/widgets/splash_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:SplashViewBody(),
    );
  }
}
