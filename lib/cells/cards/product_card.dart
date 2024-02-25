import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:stylemix_test_app/cells/cards/gradien_card.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/theme/style.dart';
import 'package:stylemix_test_app/utils/mixins.dart';

class ProductCard extends StatefulWidget {
  final Food food;
  final Function() ontap;
  const ProductCard({super.key, required this.ontap, required this.food});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  Widget image(String path) =>
      ClipRRect(borderRadius: Style.border8, child: CachedNetworkImage(imageUrl: path, fit: BoxFit.cover));

  Widget get defaultImage => Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(color: Style.colors.lightBackground, borderRadius: Style.border8),
      child: Icon(Feather.image, color: Style.colors.grey));

  Widget title(String title) => Text(title, overflow: TextOverflow.ellipsis, maxLines: 2, style: Style.bodyw4);

  Widget priceWithUnit(String price, String unit) =>
      Text.rich(TextSpan(text: Formats.priceFormat(int.parse(price), context), style: Style.bodyw4, children: [
        TextSpan(text: " / $unit".toLowerCase(), style: Style.minTextw4.copyWith(color: Style.colors.darkGrey))
      ]));

  Widget get foodQuantity => Container(
      height: 16.0,
      alignment: Alignment.bottomLeft,
      child: Text("Количество: ${widget.food.count} порций", style: Style.minTextw4));

  Widget get card => GradientCard(
      borderRadius: BorderRadius.circular(16),
      onTap: widget.ontap,
      contentPadding: Style.padding8,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        widget.food.image != null
            ? Container(
                decoration: BoxDecoration(borderRadius: Style.border8),
                height: 100,
                width: 100,
                child: image(widget.food.image!.first))
            : defaultImage,
        const SizedBox(width: 8.0),
        Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          title(widget.food.name ?? ""),
          const SizedBox(height: 4.0),
          Text(Formats.priceFormat(int.parse(widget.food.price.toString()), context), style: Style.bodyw4),
          const SizedBox(height: 8.0)
        ])),
        foodQuantity
      ]));

  @override
  Widget build(BuildContext context) => card;
}
