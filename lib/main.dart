import 'package:blog_club/carousel_slider/carousel_slider.dart';
import 'package:blog_club/data.dart';
import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const defaultFontFamily = 'Avenir';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    // const primaryColor = Color(0xff376AED);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Club',
      theme: ThemeData(
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontFamily: defaultFontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                // color: primaryColor,
              ),
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontFamily: defaultFontFamily,
              color: primaryTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          titleMedium: TextStyle(
              fontFamily: defaultFontFamily,
              color: secondaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w200),
          titleLarge: TextStyle(
            fontFamily: defaultFontFamily,
            fontWeight: FontWeight.bold,
            color: primaryTextColor,
            fontSize: 18,
          ),
          headlineSmall: TextStyle(
              fontFamily: defaultFontFamily,
              color: primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          headlineMedium: TextStyle(
              fontFamily: defaultFontFamily,
              color: primaryTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(
            fontFamily: defaultFontFamily,
            color: secondaryTextColor,
            fontSize: 12,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final stories = AppDatabase.stories;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Hi, Mersad', style: themeData.textTheme.titleMedium),
                    Image.asset(
                      Assets.img.icons.notification.path,
                      width: 32,
                      height: 32,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 16),
                child: Text("Explore today's",
                    style: themeData.textTheme.headlineMedium),
              ),
              StoryList(stories: stories, themeData: themeData),
              const SizedBox(height: 16),
              const SizedBox(
                  height: 330, width: double.infinity, child: CategoryList()),
              const PostList(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (context, index, realIndex) {
        return CategoryItem(
          left: realIndex == 0 ? 32 : 8,
          right: realIndex == categories.length - 1 ? 32 : 8,
          category: categories[realIndex],
        );
      },
      options: CarouselOptions(
        scrollPhysics: const BouncingScrollPhysics(),
        padEnds: false,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
        aspectRatio: 1.2,
        initialPage: 0,
        disableCenter: true,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;
  final double left;
  final double right;
  const CategoryItem({
    super.key,
    required this.category,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, 0, right, 0),
      child: Stack(
        children: [
          Positioned.fill(
            top: 50,
            right: 56,
            left: 56,
            bottom: 30, // 20
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 13, // 18
                      spreadRadius: 0.5,
                      color: Color(0xff0D253C),
                      // .withOpacity(0.90), // 0.70
                      offset: Offset(0, 16), // 0 16
                    )
                  ]),
            ),
          ),
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Color(0xff0D253C),
                        Colors.transparent,
                      ])),
              decoration: BoxDecoration(
                // color: const Color.fromARGB(226, 16, 16, 82),
                borderRadius: BorderRadius.circular(32),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child:
                      Image.asset(category.imageFileName, fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              bottom: 50,
              left: 32,
              child: Text(
                category.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: Colors.white),
              )),
        ],
      ),
    );
  }
}

class StoryList extends StatelessWidget {
  const StoryList({
    super.key,
    required this.stories,
    required this.themeData,
  });

  final List<StoryData> stories;
  final ThemeData themeData;

  List<StoryData> _sortStories(List<StoryData> stories) {
    // List<StoryData> stories = StoriesDatabase.stories;

    List<StoryData> viewedStories = [];
    List<StoryData> updatedStories = [];

    for (var story in stories) {
      if (story.isViewed) {
        viewedStories.add(story);
      } else {
        updatedStories.add(story);
      }
    }

    // Move items with isViewed to the end of the list
    updatedStories.addAll(viewedStories);

    return updatedStories;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final story = _sortStories(stories)[index];
            return StoryItem(story: story, themeData: themeData);
          }),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.story,
    required this.themeData,
  });

  final StoryData story;
  final ThemeData themeData;

  List<Color> _storyItemBorderColor(String categoryType) {
    late List<Color> storyBorderColor;

    switch (categoryType) {
      case 'assets/img/icons/category_1.png':
        storyBorderColor = [Colors.lightBlueAccent, Colors.indigo];
        break;
      case 'assets/img/icons/category_2.png':
        storyBorderColor = [Colors.orangeAccent, Colors.deepOrange];
        break;
      case 'assets/img/icons/category_3.png':
        storyBorderColor = [Colors.purpleAccent, Colors.deepPurple];
        break;
      case 'assets/img/icons/category_4.png':
        storyBorderColor = [Colors.redAccent, Colors.red];
        break;
    }
    return storyBorderColor;
  }

  Color _categoryIconColor(String categoryType) {
    late Color categoryIconColor;

    switch (categoryType) {
      case 'assets/img/icons/category_1.png':
        categoryIconColor = Colors.blueAccent;
        break;
      case 'assets/img/icons/category_2.png':
        categoryIconColor = Colors.orangeAccent;
        break;
      case 'assets/img/icons/category_3.png':
        categoryIconColor = Colors.purpleAccent;
        break;
      case 'assets/img/icons/category_4.png':
        categoryIconColor = Colors.redAccent;
        break;
    }
    return categoryIconColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: Column(
        children: [
          Stack(
            children: [
              story.isViewed
                  ? _storyBorderViewedState()
                  : _storyBorderNotViewedState(),
              Positioned(
                bottom: -3,
                right: -3,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: _categoryIconColor(story.iconFileName),
                      blurRadius: 7,
                      spreadRadius: -7,
                      offset: const Offset(-6, -6),
                    )
                  ]),
                  child: Image.asset(
                    story.iconFileName,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            story.name,
            style: themeData.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }

  Widget _storyBorderNotViewedState() {
    return Container(
      height: 68,
      width: 68,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
            // begin: Alignment.topCenter,
            // end: Alignment.bottomCenter,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // colors: [
            //   Color(0xff376AED),
            //   Color(0xff49B0E2),
            //   Color(0xff9CECFB),
            // ],
            colors: _storyItemBorderColor(story.iconFileName)),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.all(5),
        child: _storyProfileImage(),
      ),
    );
  }

  Widget _storyBorderViewedState() {
    return Container(
      height: 68,
      width: 68,
      decoration: BoxDecoration(
        color: const Color(0xff7B8BB2).withOpacity(0.2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.all(5),
        child: _storyProfileImage(),
      ),
    );
  }

  Widget _storyProfileImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(17),
      child: Image.asset(story.imageFileName),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = AppDatabase.posts;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 32, right: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Latest News',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(
                    color: Color(0xff376AED),
                  ),
                ),
              )
            ]),
      ),
      ListView.builder(
          itemCount: posts.length,
          itemExtent: 141,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            final post = posts[index];
            return PostItem(post: post);
          }),
    ]);
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.post,
  });

  final PostData post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(32, 8, 32, 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), // 24
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              // spreadRadius: 1,
              blurRadius: 10,
              color: const Color(0xff5282FF).withOpacity(0.20),
            )
          ]),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6,
                      // color: const Color(0xff5282FF).withOpacity(0.5),
                      color: const Color(0xff0D253C).withOpacity(0.37),
                      offset: const Offset(6, 0))
                ]),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16), // 24
                child: Image.asset(post.imageFileName)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.caption,
                    style: const TextStyle(
                      fontFamily: MyApp.defaultFontFamily,
                      color: Color(0xff376AED),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    post.title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.hand_thumbsup,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                      const SizedBox(width: 4),
                      Text(post.likes,
                          style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.clock,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                      const SizedBox(width: 4),
                      Text(post.time,
                          style: Theme.of(context).textTheme.bodyMedium),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            post.isBookmarked
                                ? CupertinoIcons.bookmark_fill
                                : CupertinoIcons.bookmark,
                            size: 16,
                            color:
                                Theme.of(context).textTheme.bodyMedium!.color,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
