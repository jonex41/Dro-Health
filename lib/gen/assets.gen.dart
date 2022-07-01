/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cough.webp
  AssetGenImage get cough => const AssetGenImage('assets/images/cough.webp');

  /// File path: assets/images/doliprane1.jpg
  AssetGenImage get doliprane1 =>
      const AssetGenImage('assets/images/doliprane1.jpg');

  /// File path: assets/images/error.png
  AssetGenImage get error => const AssetGenImage('assets/images/error.png');

  /// File path: assets/images/headache.webp
  AssetGenImage get headache =>
      const AssetGenImage('assets/images/headache.webp');

  /// File path: assets/images/ibuprufen200.webp
  AssetGenImage get ibuprufen200 =>
      const AssetGenImage('assets/images/ibuprufen200.webp');

  /// File path: assets/images/ibuprufen400.webp
  AssetGenImage get ibuprufen400 =>
      const AssetGenImage('assets/images/ibuprufen400.webp');

  /// File path: assets/images/image1.png
  AssetGenImage get image1 => const AssetGenImage('assets/images/image1.png');

  /// File path: assets/images/image2.png
  AssetGenImage get image2 => const AssetGenImage('assets/images/image2.png');

  /// File path: assets/images/image3.png
  AssetGenImage get image3 => const AssetGenImage('assets/images/image3.png');

  /// File path: assets/images/image4.png
  AssetGenImage get image4 => const AssetGenImage('assets/images/image4.png');

  /// File path: assets/images/infant.webp
  AssetGenImage get infant => const AssetGenImage('assets/images/infant.webp');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mzor.png
  AssetGenImage get mzor => const AssetGenImage('assets/images/mzor.png');

  /// File path: assets/images/mzorparace.jpeg
  AssetGenImage get mzorparace =>
      const AssetGenImage('assets/images/mzorparace.jpeg');

  /// File path: assets/images/panadol.webp
  AssetGenImage get panadol =>
      const AssetGenImage('assets/images/panadol.webp');

  /// File path: assets/images/parace500.webp
  AssetGenImage get parace500 =>
      const AssetGenImage('assets/images/parace500.webp');

  /// File path: assets/images/paracetamol500.webp
  AssetGenImage get paracetamol500 =>
      const AssetGenImage('assets/images/paracetamol500.webp');

  /// File path: assets/images/surplement.jpeg
  AssetGenImage get surplement =>
      const AssetGenImage('assets/images/surplement.jpeg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}
