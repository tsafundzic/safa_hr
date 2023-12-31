/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesDashboardGen get dashboard => const $AssetsImagesDashboardGen();

  /// File path: assets/images/safa_logo.svg
  SvgGenImage get safaLogo => const SvgGenImage('assets/images/safa_logo.svg');

  /// File path: assets/images/safa_logo_full.svg
  SvgGenImage get safaLogoFull =>
      const SvgGenImage('assets/images/safa_logo_full.svg');

  /// List of all assets
  List<SvgGenImage> get values => [safaLogo, safaLogoFull];
}

class $AssetsImagesDashboardGen {
  const $AssetsImagesDashboardGen();

  /// File path: assets/images/dashboard/dashboard_slider_00.jpg
  AssetGenImage get dashboardSlider00 =>
      const AssetGenImage('assets/images/dashboard/dashboard_slider_00.jpg');

  /// File path: assets/images/dashboard/dashboard_slider_01.jpg
  AssetGenImage get dashboardSlider01 =>
      const AssetGenImage('assets/images/dashboard/dashboard_slider_01.jpg');

  /// File path: assets/images/dashboard/dashboard_slider_02.jpg
  AssetGenImage get dashboardSlider02 =>
      const AssetGenImage('assets/images/dashboard/dashboard_slider_02.jpg');

  /// File path: assets/images/dashboard/dashboard_slider_03.jpg
  AssetGenImage get dashboardSlider03 =>
      const AssetGenImage('assets/images/dashboard/dashboard_slider_03.jpg');

  /// File path: assets/images/dashboard/dashboard_slider_05.jpg
  AssetGenImage get dashboardSlider05 =>
      const AssetGenImage('assets/images/dashboard/dashboard_slider_05.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        dashboardSlider00,
        dashboardSlider01,
        dashboardSlider02,
        dashboardSlider03,
        dashboardSlider05
      ];
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
