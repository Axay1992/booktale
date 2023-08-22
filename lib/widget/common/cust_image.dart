import 'dart:io';

import 'package:booktale/constant/color_constant.dart';
import 'package:booktale/constant/img_constant.dart';
import 'package:booktale/main.dart';
import 'package:booktale/utils/custom_extension.dart';
import 'package:booktale/widget/common/custom_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:shimmer/shimmer.dart';

class CustImage extends StatelessWidget {
  final String imgURL;
  final double? height;
  final double? width;
  final double? cornerRadius;
  final String errorImage;
  final bool zoomablePhoto;
  final Color? backgroundColor;
  final Color? imgColor;
  final BoxFit boxfit;
  final String name;
  final Color? textColor;
  final EdgeInsets letterPadding;

  const CustImage({
    Key? key,
    this.imgURL = "",
    this.cornerRadius = 0,
    this.height,
    this.width,
    this.boxfit = BoxFit.cover,
    this.errorImage = ImgName.booktaleLogo, // change img
    this.zoomablePhoto = false,
    this.backgroundColor,
    this.imgColor,
    this.textColor,
    this.name = "",
    this.letterPadding = const EdgeInsets.all(8.0),
  }) : super(key: key);

  Widget defaultImg(BuildContext context) => name.isEmpty
      ? Image.asset(
          errorImage,
          color: imgColor,
          errorBuilder: (context, error, stackTrace) => Image.asset(
            errorImage,
            fit: BoxFit.cover,
            color: imgColor,
            height: height,
            width: width,
          ),
          fit: BoxFit.cover,
          height: height,
          width: width,
        )
      : userName(context);

  Widget userName(BuildContext context) => Padding(
        padding: letterPadding,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: CustomText(
            txtTitle: name, //toFirstLetter,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: textColor ?? const Color(0xFF808080),
                ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    Widget image = defaultImg(context);
    if (imgURL.isNotEmpty) {
      // Check if Network image...
      if (imgURL.isNetworkImage) {
        image =
            zoomablePhoto ? _buildZoomablePhoto(context) : _cacheImage(context);

        // Check if Asset image...
      } else if (isAssetImage(imgURL)) {
        image = imgURL.contains(".svg")
            ? SvgPicture.asset(
                imgURL,
                // ignore: deprecated_member_use
                color: imgColor,
                fit: boxfit,
                height: height,
                width: width,
              )
            : Image.asset(
                imgURL,
                height: height,
                width: width,
                color: imgColor,
                errorBuilder: (context, error, stackTrace) =>
                    defaultImg(context),
                fit: boxfit,
              );

        // Check if File image...
      } else if (isFileImage(imgURL)) {
        image = Image.file(
          File(imgURL),
          height: height,
          width: width,
          color: imgColor,
          errorBuilder: (context, error, stackTrace) => defaultImg(context),
          fit: boxfit,
        );
      }
    } else if (name.trim().isNotEmpty) {
      image = userName(context);
    }

    return Container(
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: name.trim().isNotEmpty
            ? const Color(0xFFADADAD).withOpacity(0.3)
            : backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(cornerRadius ?? 0.0),
        ),
      ),
      height: height,
      width: width,
      child: image,
    );
  }

  Widget _cacheImage(BuildContext context) {
    //  CachedNetworkImage.evictFromCache(imgURL);
    PaintingBinding.instance.imageCache.clear();
    return imgURL.contains(".svg")
        ? SvgPicture.network(
            imgURL,
            // ignore: deprecated_member_use
            color: imgColor,
            fit: boxfit,
            height: height,
            width: width,
            placeholderBuilder: (context) => defaultImg(context),
          )
        : CachedNetworkImage(
            fit: boxfit,
            imageUrl: imgURL,
            height: height,
            width: width,
            color: imgColor,
            placeholder: (context, url) => shimmerWidget(),
            errorWidget: (ctx, url, obj) => defaultImg(context),
          );
  }

  Widget _buildZoomablePhoto(BuildContext context) {
    return PhotoViewGallery(
      pageOptions: [
        PhotoViewGalleryPageOptions(
          imageProvider: CachedNetworkImageProvider(
            imgURL,
          ),
          minScale: PhotoViewComputedScale.contained,
          maxScale: PhotoViewComputedScale.covered * 2,
        )
      ],
      loadingBuilder: (context, url) => const CircularProgressIndicator(),
    );
  }

  Widget shimmerWidget() {
    return Shimmer.fromColors(
      baseColor: ColorConstants.custGrayADADAD.withOpacity(0.3),
      highlightColor: ColorConstants.custGrayADADAD.withOpacity(0.4),
      child: Container(
        height: height,
        width: width,
        color: Theme.of(getContext).primaryColorLight,
      ),
    );
  }

  bool isAssetImage(String url) => url.toLowerCase().contains(ImgName.imgPath);

  bool isFileImage(String url) => !isAssetImage(url);
}
