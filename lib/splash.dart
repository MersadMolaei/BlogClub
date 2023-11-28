import 'dart:ui';
import 'dart:async';
import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  bool _showFirstLogo = true;

  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    _timer = Timer.periodic(
      const Duration(milliseconds: 1200), //^ 500
      (Timer timer) {
        setState(() {
          // Toggle the value of _showFirstLogo
          _showFirstLogo = !_showFirstLogo;
        });
      },
    );
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //* Background image
          Positioned.fill(
              child: Assets.img.background.bg.image(fit: BoxFit.cover)),
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(Assets.img.background.bg.path), // 1-34
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
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
            child: _showFirstLogo
                ? Assets.img.icons.iran1Splash.image(width: 240)
                : Assets.img.icons.iranBlackSplash.svg(height: 200),

            // child: SvgPicture.asset(
            //   Assets.img.icons.iranBlackSplash.path,
            //   height: 200,
            // ),
          ),
        ],
      ),
    );
  }
}


// Image.asset(
//             Assets.img.icons.iran1Splash.path,
//             width: 230,
//           ),
//           child: SvgPicture.asset(
//             Assets.img.icons.iranBlackSplash.path,
//             height: 200,
//           ),