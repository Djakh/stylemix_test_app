import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/theme/style.dart';

class ImageSliderCell extends StatefulWidget {
  final Food products;
  final VoidCallback onRatingTap;

  const ImageSliderCell({super.key, required this.onRatingTap, required this.products});

  @override
  _ImageSliderCellState createState() => _ImageSliderCellState();
}

class _ImageSliderCellState extends State<ImageSliderCell> {
  int currentPage = 0;

  /// --- Widgets ---
  Widget indicator({bool isActive = false}) => Container(
      height: 12.0,
      width: 12.0,
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
          color: isActive ? Style.colors.orange6 : Style.colors.grey, borderRadius: BorderRadius.circular(6.0)));

  Widget get indicators => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.products.image!.length, (index) => indicator(isActive: index == currentPage)));

  Widget get ratingWithIcon => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.orange,
        ),
        Text("3", style: Style.smallTextw5.copyWith(color: Style.colors.white))
      ]);

  Widget get ratingWithIndicator =>
      Column(children: [ratingWithIcon, const SizedBox(height: 12), indicators, const SizedBox(height: 12)]);

  Widget get pageView => PageView(
      physics: const ClampingScrollPhysics(),
      children: widget.products.image!
          .map((image) => CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (_, imageProvider) => Container(
                  decoration: BoxDecoration(image: DecorationImage(image: imageProvider, fit: BoxFit.cover)))))
          .toList(),
      onPageChanged: (page) {
        currentPage = page;
        setState(() {});
      });

  @override
  Widget build(BuildContext context) => Container(
      height: 330.0,
      color: Style.colors.background,
      child: Stack(children: [pageView, Positioned(bottom: 0.0, right: 0.0, left: 0.0, child: ratingWithIndicator)]));
}
