import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:purasiwa/shared/widget/my_loading.dart';

import '../styles/colors.dart';


class MyImage extends StatelessWidget {
  final String imageUrl;
  final String? assetPath;
  final bool isNetwork;
  final BoxFit? fit;
  final bool isLottie;
  final bool isSvg;
  final Color? color;
  final double? size;

  const MyImage._({
    required this.imageUrl,
    this.assetPath,
    required this.isNetwork,
    this.fit,
    this.isLottie = false,
    this.isSvg = false, this.color, this.size,
  });

  factory MyImage(String urlOrPath, {BoxFit? fit}) {
    return MyImage.network(urlOrPath, fit: fit);
  }

  factory MyImage.network(String url, {BoxFit? fit}) {
    return MyImage._(
      imageUrl: url,
      isNetwork: true,
      fit: fit,
    );
  }

  factory MyImage.asset(String path, {BoxFit? fit}) {
    return MyImage._(
      imageUrl: '',
      assetPath: path,
      isNetwork: false,
      fit: fit,
    );
  }

  factory MyImage.animation(String urlOrPath, {BoxFit? fit, bool isNetwork = false}) {
    return MyImage._(
      imageUrl: isNetwork ? urlOrPath : '',
      assetPath: !isNetwork ? urlOrPath : null,
      isNetwork: isNetwork,
      fit: fit,
      isLottie: true,
    );
  }

  /// Factory for loading SVG assets
  factory MyImage.svg(String path, {BoxFit? fit, Color? color, double? size}) {
    return MyImage._(
      imageUrl: '',
      assetPath: path,
      isNetwork: false,
      fit: fit,
      isSvg: true,
      color: color,
      size: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (isLottie) {
      return isNetwork
          ? Lottie.network(imageUrl, fit: fit)
          : Lottie.asset(assetPath!, fit: fit);
    }

    if (isSvg) {
      return SvgPicture.asset(
        assetPath!,
        fit: fit ?? BoxFit.cover,
        // ignore: deprecated_member_use
        color: color,
        width: size,
        height: size,
      );
    }

    if (isNetwork) {
      if (imageUrl == '') {
        return Container(
          color: AppColors.base200,
          child: Center(
              child: Container(
                  constraints: BoxConstraints(maxWidth: 80, maxHeight: 80),
                  child: Icon(LucideIcons.image, size: 50)
              )
          ),
        );
      }
      return CachedNetworkImage(
        fit: fit ?? BoxFit.cover,
        imageUrl: imageUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) => Container(
          color: AppColors.base100,
          child: Center(child: MyLoading()),
        ),
        errorWidget: (context, url, error) => Container(
          width: double.infinity,
          height: double.infinity,
          color: AppColors.base200,
          child: Center(
              child: Container(
                  constraints: BoxConstraints(maxWidth: 80, maxHeight: 80),
                  child: Icon(LucideIcons.image, size: 50)
              )
          ),
        ),
      );
    } else {
      return Image.asset(
        assetPath!,
        fit: fit,
      );
    }
  }
}
