import 'dart:ui';

import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //* Background image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.img.background.bg.path), // 1-34
              fit: BoxFit.cover,
            ),
          ),
        ),
        //* Glass Effect
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30), // 30
          child: Container(
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        //* Center LOGO
        Center(
          // child: Image.asset(
          //   Assets.img.icons.usSplash.path,
          //   width: 230,
          // ),
          // child: Image.asset(
          //   Assets.img.icons.blogSplash.path,
          //   // width: 230,
          // ),
          child: Image.asset(
            Assets.img.icons.iran1Splash.path,
            width: 230,
          ),
          // child: SvgPicture.asset(
          //   Assets.img.icons.iranBlackSplash.path,
          //   height: 200,
          // ),
        ),
      ],
    );
  }
}
