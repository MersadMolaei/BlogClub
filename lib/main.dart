import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/gen/fonts.gen.dart';
import 'package:blog_club/screens/home_screen.dart';
import 'package:blog_club/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    const primaryColor = Color(0xff376AED);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Club',
      theme: ThemeData(
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontFamily: FontFamily.avenir,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                // color: primaryColor,
              ),
            ),
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          onPrimary: Colors.white,
          surface: Colors.white,
          onSurface: primaryTextColor,
          background: Color(0xFFF8FAFF),
          // background: Color(0xFFFBFCFF),
          onBackground: primaryTextColor,
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontFamily: FontFamily.avenir,
              color: primaryTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          titleMedium: TextStyle(
              fontFamily: FontFamily.avenir,
              color: secondaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w200),
          titleLarge: TextStyle(
            fontFamily: FontFamily.avenir,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
            fontSize: 18,
          ),
          headlineSmall: TextStyle(
              fontFamily: FontFamily.avenir,
              color: primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(
              fontFamily: FontFamily.avenir,
              color: primaryTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w700),
          bodySmall: TextStyle(
            fontFamily: FontFamily.avenir,
            fontWeight: FontWeight.w700,
            color: Color(0xff7B8BB2),
            fontSize: 10,
          ),
          bodyMedium: TextStyle(
            fontFamily: FontFamily.avenir,
            color: secondaryTextColor,
            fontSize: 12,
          ),
        ),
      ),
      // home: const Stack(
      //   children: [
      //     Positioned.fill(child: HomeScreen()),
      //     Positioned(bottom: 0, left: 0, right: 0, child: BottomNavigation())
      //   ],
      // ),
      home: const SplashScreen(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.5),
                      topRight: Radius.circular(32.5)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: const Color(0xff9B8487).withOpacity(0.5),
                    )
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottomNavigationItem(
                        iconFileName: Assets.img.icons.home.path,
                        activeiconFileName: Assets.img.icons.home.path,
                        title: 'Home'),
                    BottomNavigationItem(
                        iconFileName: Assets.img.icons.articles.path,
                        activeiconFileName: Assets.img.icons.articles.path,
                        title: 'Articles'),
                    const SizedBox(width: 24),
                    BottomNavigationItem(
                        iconFileName: Assets.img.icons.search.path,
                        activeiconFileName: Assets.img.icons.search.path,
                        title: 'Search'),
                    BottomNavigationItem(
                        iconFileName: Assets.img.icons.menu.path,
                        activeiconFileName: Assets.img.icons.menu.path,
                        title: 'Menu'),
                  ]),
            ),
          ),
          Center(
            child: Container(
              width: 65,
              height: 85,
              alignment: Alignment.topCenter,
              child: Container(
                  height: 65,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          // color: const Color(0xff9B8487).withOpacity(1.0),
                          color: const Color(0xff0D253C).withOpacity(0.3),
                          blurRadius: 12),
                    ],
                    borderRadius: BorderRadius.circular(32.5),
                    color: const Color(0xff376AED),
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                  child: Image.asset(Assets.img.icons.plus.path)),
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeiconFileName;
  final String title;

  const BottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeiconFileName,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(iconFileName),
        const SizedBox(height: 4),
        Text(title, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
