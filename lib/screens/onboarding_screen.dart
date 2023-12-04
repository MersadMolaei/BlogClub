import 'dart:developer';

import 'package:blog_club/data.dart';
import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  final items = AppDatabase.onBoardingItems;

  int page = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != page) {
        setState(() {
          page = _pageController.page!.round();
          // log('OnBoarding: Selected page -> $page');
          debugPrint('[ OnBoarding ] Selected Page -> $page');
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 72,
              bottom: 0,
            ),
            child: Assets.img.background.onBoarding.image(scale: 0.9),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: themeData.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(38), //? 28
                    topLeft: Radius.circular(38), //? 28
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x115182FF),
                      blurRadius: 20,
                      offset: Offset(0, -25),
                      spreadRadius: 0,
                    )
                  ]),
              child: Column(children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: items.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].title,
                              style: themeData.textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              items[index].description,
                              style: themeData.textTheme.titleMedium!
                                  .apply(fontSizeFactor: 0.9),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 80,
                  // color: Colors.black,
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: items.length,
                          effect: ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: themeData.colorScheme.primary,
                            dotColor:
                                themeData.colorScheme.primary.withOpacity(0.1),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (page == items.length - 1) {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                            } else {
                              _pageController.animateToPage(page + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate);
                            }
                          },
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(const Size(88, 60)),
                            backgroundColor: MaterialStateProperty.all(
                                themeData.colorScheme.primary),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          child: Icon(
                            page == items.length - 1
                                ? CupertinoIcons.check_mark
                                : CupertinoIcons.arrow_right,
                            color: themeData.colorScheme.onPrimary,
                          ),
                        ),
                      ]),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
