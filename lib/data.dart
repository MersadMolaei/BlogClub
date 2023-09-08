import 'package:blog_club/gen/assets.gen.dart';

class StoryData {
  final int id;
  final String name;
  final String imageFileName;
  final String iconFileName;
  final bool isViewed;

  StoryData(
      {required this.id,
      required this.name,
      required this.imageFileName,
      required this.iconFileName,
      required this.isViewed});
}

class Category {
  final int id;
  final String title;
  final String imageFileName;

  Category(
      {required this.id, required this.title, required this.imageFileName});
}

class PostData {
  final int id;
  final String caption;
  final String title;
  final String likes;
  final String time;
  final bool isBookmarked;
  final String imageFileName;

  PostData(
      {required this.id,
      required this.caption,
      required this.title,
      required this.likes,
      required this.time,
      required this.isBookmarked,
      required this.imageFileName});
}

class AppDatabase {
  static List<StoryData> get stories {
    return [
      StoryData(
          id: 1001,
          name: 'Emilia',
          imageFileName: Assets.img.stories.story1.path,
          iconFileName: Assets.img.icons.category1.path,
          isViewed: false),
      StoryData(
          id: 1002,
          name: 'Lucas',
          imageFileName: Assets.img.stories.story3.path,
          iconFileName: Assets.img.icons.category2.path,
          isViewed: false),
      StoryData(
          id: 1003,
          name: 'Jasmine',
          imageFileName: Assets.img.stories.story2.path,
          iconFileName: Assets.img.icons.category3.path,
          isViewed: true),
      StoryData(
          id: 1004,
          name: 'Richard',
          imageFileName: Assets.img.stories.story5.path,
          iconFileName: Assets.img.icons.category4.path,
          isViewed: false),
      StoryData(
          id: 1005,
          name: 'Isabella',
          imageFileName: Assets.img.stories.story4.path,
          iconFileName: Assets.img.icons.category2.path,
          isViewed: false),
      StoryData(
          id: 1006,
          name: 'Olivia',
          imageFileName: Assets.img.stories.story6.path,
          iconFileName: Assets.img.icons.category1.path,
          isViewed: false),
      StoryData(
          id: 1007,
          name: 'Amelia',
          imageFileName: Assets.img.stories.story7.path,
          iconFileName: Assets.img.icons.category4.path,
          isViewed: false),
      StoryData(
          id: 1008,
          name: 'Grace',
          imageFileName: Assets.img.stories.story8.path,
          iconFileName: Assets.img.icons.category3.path,
          isViewed: false),
    ];
  }

  static List<Category> get categories {
    return [
      Category(
        id: 101,
        title: 'Technology',
        imageFileName: Assets.img.posts.large.largepost1.path,
      ),
      Category(
        id: 102,
        title: 'Cinema',
        imageFileName: Assets.img.posts.large.largepost2.path,
      ),
      Category(
        id: 103,
        title: 'Transportation',
        imageFileName: Assets.img.posts.large.largepost3.path,
      ),
      Category(
        id: 104,
        title: 'Adventure',
        imageFileName: Assets.img.posts.large.largepost4.path,
      ),
      Category(
        id: 105,
        title: 'Artificial Intelligence',
        imageFileName: Assets.img.posts.large.largepost5.path,
      ),
      Category(
        id: 106,
        title: 'Economy',
        imageFileName: Assets.img.posts.large.largepost6.path,
      ),
    ];
  }

  static List<PostData> get posts {
    return [
      PostData(
        id: 1,
        title: 'BMW M5 Competition Review 2021',
        caption: 'TOP GEAR',
        isBookmarked: false,
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: Assets.img.posts.small.smallpost1.path,
      ),
      PostData(
        id: 0,
        title: 'MacBook Pro with M1 Pro and M1 Max review',
        caption: 'THE VERGE',
        isBookmarked: true,
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: Assets.img.posts.small.smallpost2.path,
      ),
      PostData(
        id: 2,
        title: 'Step design sprint for UX beginner',
        caption: 'Ux Design',
        isBookmarked: false,
        likes: '2k',
        time: '41hr ago',
        imageFileName: Assets.img.posts.small.smallpost3.path,
      ),
    ];
  }

  static List<OnBoardingItem> get onBoardingItem {
    List<OnBoardingItem> items = [];
    for (var i = 0; i < 4; i++) {
      items.add(OnBoardingItem('Read the article you want instantly',
          'You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.'));
    }
    return items;
  }
}

class OnBoardingItem {
  final String title;
  final String description;

  OnBoardingItem(this.title, this.description);
}
