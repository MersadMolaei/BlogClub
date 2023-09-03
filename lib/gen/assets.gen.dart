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
  $AssetsImgStoriesGen get stories => const $AssetsImgStoriesGen();
}

class $AssetsImgIconsGen {
  const $AssetsImgIconsGen();

  /// File path: assets/img/icons/category_1.png
  AssetGenImage get category1 =>
      const AssetGenImage('assets/img/icons/category_1.png');

  /// File path: assets/img/icons/category_2.png
  AssetGenImage get category2 =>
      const AssetGenImage('assets/img/icons/category_2.png');

  /// File path: assets/img/icons/category_3.png
  AssetGenImage get category3 =>
      const AssetGenImage('assets/img/icons/category_3.png');

  /// File path: assets/img/icons/category_4.png
  AssetGenImage get category4 =>
      const AssetGenImage('assets/img/icons/category_4.png');

  /// File path: assets/img/icons/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/img/icons/notification.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [category1, category2, category3, category4, notification];
}

class $AssetsImgStoriesGen {
  const $AssetsImgStoriesGen();

  /// File path: assets/img/stories/story_1.jpg
  AssetGenImage get story1 =>
      const AssetGenImage('assets/img/stories/story_1.jpg');

  /// File path: assets/img/stories/story_2.jpg
  AssetGenImage get story2 =>
      const AssetGenImage('assets/img/stories/story_2.jpg');

  /// File path: assets/img/stories/story_3.jpg
  AssetGenImage get story3 =>
      const AssetGenImage('assets/img/stories/story_3.jpg');

  /// File path: assets/img/stories/story_4.jpg
  AssetGenImage get story4 =>
      const AssetGenImage('assets/img/stories/story_4.jpg');

  /// File path: assets/img/stories/story_5.jpg
  AssetGenImage get story5 =>
      const AssetGenImage('assets/img/stories/story_5.jpg');

  /// File path: assets/img/stories/story_6.jpg
  AssetGenImage get story6 =>
      const AssetGenImage('assets/img/stories/story_6.jpg');

  /// File path: assets/img/stories/story_7.jpg
  AssetGenImage get story7 =>
      const AssetGenImage('assets/img/stories/story_7.jpg');

  /// File path: assets/img/stories/story_8.jpg
  AssetGenImage get story8 =>
      const AssetGenImage('assets/img/stories/story_8.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [story1, story2, story3, story4, story5, story6, story7, story8];
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
