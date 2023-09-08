/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/avenir_bold.otf
  String get avenirBold => 'assets/fonts/avenir_bold.otf';

  /// File path: assets/fonts/avenir_regular.otf
  String get avenirRegular => 'assets/fonts/avenir_regular.otf';

  /// List of all assets
  List<String> get values => [avenirBold, avenirRegular];
}

class $AssetsImgGen {
  const $AssetsImgGen();

  $AssetsImgIconsGen get icons => const $AssetsImgIconsGen();
  $AssetsImgPostsGen get posts => const $AssetsImgPostsGen();
  $AssetsImgStoriesGen get stories => const $AssetsImgStoriesGen();
}

class $AssetsImgIconsGen {
  const $AssetsImgIconsGen();

  /// File path: assets/img/icons/category1.png
  AssetGenImage get category1 =>
      const AssetGenImage('assets/img/icons/category1.png');

  /// File path: assets/img/icons/category2.png
  AssetGenImage get category2 =>
      const AssetGenImage('assets/img/icons/category2.png');

  /// File path: assets/img/icons/category3.png
  AssetGenImage get category3 =>
      const AssetGenImage('assets/img/icons/category3.png');

  /// File path: assets/img/icons/category4.png
  AssetGenImage get category4 =>
      const AssetGenImage('assets/img/icons/category4.png');

  /// File path: assets/img/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/img/icons/notification.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [category1, category2, category3, category4, notification];
}

class $AssetsImgPostsGen {
  const $AssetsImgPostsGen();

  $AssetsImgPostsLargeGen get large => const $AssetsImgPostsLargeGen();
  $AssetsImgPostsSmallGen get small => const $AssetsImgPostsSmallGen();
}

class $AssetsImgStoriesGen {
  const $AssetsImgStoriesGen();

  /// File path: assets/img/stories/story1.jpg
  AssetGenImage get story1 =>
      const AssetGenImage('assets/img/stories/story1.jpg');

  /// File path: assets/img/stories/story2.jpg
  AssetGenImage get story2 =>
      const AssetGenImage('assets/img/stories/story2.jpg');

  /// File path: assets/img/stories/story3.jpg
  AssetGenImage get story3 =>
      const AssetGenImage('assets/img/stories/story3.jpg');

  /// File path: assets/img/stories/story4.jpg
  AssetGenImage get story4 =>
      const AssetGenImage('assets/img/stories/story4.jpg');

  /// File path: assets/img/stories/story5.jpg
  AssetGenImage get story5 =>
      const AssetGenImage('assets/img/stories/story5.jpg');

  /// File path: assets/img/stories/story6.jpg
  AssetGenImage get story6 =>
      const AssetGenImage('assets/img/stories/story6.jpg');

  /// File path: assets/img/stories/story7.jpg
  AssetGenImage get story7 =>
      const AssetGenImage('assets/img/stories/story7.jpg');

  /// File path: assets/img/stories/story8.jpg
  AssetGenImage get story8 =>
      const AssetGenImage('assets/img/stories/story8.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [story1, story2, story3, story4, story5, story6, story7, story8];
}

class $AssetsImgPostsLargeGen {
  const $AssetsImgPostsLargeGen();

  /// File path: assets/img/posts/large/largepost1.jpg
  AssetGenImage get largepost1 =>
      const AssetGenImage('assets/img/posts/large/largepost1.jpg');

  /// File path: assets/img/posts/large/largepost2.jpg
  AssetGenImage get largepost2 =>
      const AssetGenImage('assets/img/posts/large/largepost2.jpg');

  /// File path: assets/img/posts/large/largepost3.jpg
  AssetGenImage get largepost3 =>
      const AssetGenImage('assets/img/posts/large/largepost3.jpg');

  /// File path: assets/img/posts/large/largepost4.jpg
  AssetGenImage get largepost4 =>
      const AssetGenImage('assets/img/posts/large/largepost4.jpg');

  /// File path: assets/img/posts/large/largepost5.jpg
  AssetGenImage get largepost5 =>
      const AssetGenImage('assets/img/posts/large/largepost5.jpg');

  /// File path: assets/img/posts/large/largepost6.jpg
  AssetGenImage get largepost6 =>
      const AssetGenImage('assets/img/posts/large/largepost6.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [largepost1, largepost2, largepost3, largepost4, largepost5, largepost6];
}

class $AssetsImgPostsSmallGen {
  const $AssetsImgPostsSmallGen();

  /// File path: assets/img/posts/small/smallpost1.jpg
  AssetGenImage get smallpost1 =>
      const AssetGenImage('assets/img/posts/small/smallpost1.jpg');

  /// File path: assets/img/posts/small/smallpost2.jpg
  AssetGenImage get smallpost2 =>
      const AssetGenImage('assets/img/posts/small/smallpost2.jpg');

  /// File path: assets/img/posts/small/smallpost3.jpg
  AssetGenImage get smallpost3 =>
      const AssetGenImage('assets/img/posts/small/smallpost3.jpg');

  /// File path: assets/img/posts/small/smallpost4.jpg
  AssetGenImage get smallpost4 =>
      const AssetGenImage('assets/img/posts/small/smallpost4.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [smallpost1, smallpost2, smallpost3, smallpost4];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
