/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Button.svg
  SvgGenImage get button => const SvgGenImage('assets/svg/Button.svg');

  /// File path: assets/svg/Ic_dropdown.svg
  SvgGenImage get icDropdown => const SvgGenImage('assets/svg/Ic_dropdown.svg');

  /// File path: assets/svg/Ic_heat.svg
  SvgGenImage get icHeat => const SvgGenImage('assets/svg/Ic_heat.svg');

  /// File path: assets/svg/Ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/svg/Ic_home.svg');

  /// File path: assets/svg/Ic_mess.svg
  SvgGenImage get icMess => const SvgGenImage('assets/svg/Ic_mess.svg');

  /// File path: assets/svg/Ic_post.svg
  SvgGenImage get icPost => const SvgGenImage('assets/svg/Ic_post.svg');

  /// File path: assets/svg/Ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/svg/Ic_search.svg');

  /// File path: assets/svg/Icons_video.svg
  SvgGenImage get iconsVideo => const SvgGenImage('assets/svg/Icons_video.svg');

  /// File path: assets/svg/btn_round.svg
  SvgGenImage get btnRound => const SvgGenImage('assets/svg/btn_round.svg');

  /// File path: assets/svg/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/svg/logo.svg');

  /// File path: assets/svg/notification_icon.svg
  SvgGenImage get notificationIcon =>
      const SvgGenImage('assets/svg/notification_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        button,
        icDropdown,
        icHeat,
        icHome,
        icMess,
        icPost,
        icSearch,
        iconsVideo,
        btnRound,
        logo,
        notificationIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

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
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
