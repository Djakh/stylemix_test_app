import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stylemix_test_app/cells/image_slider.dart';
import 'package:stylemix_test_app/cells/toast.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/theme/style.dart';
import 'package:stylemix_test_app/utils/mixins.dart';

class ProductDetailsController extends StatefulWidget {
  final Food food;
  const ProductDetailsController({Key? key, required this.food}) : super(key: key);

  @override
  State<ProductDetailsController> createState() => _ProductDetailsControllerState();
}

class _ProductDetailsControllerState extends State<ProductDetailsController> with Formats {
  final scrollController = ScrollController();
  final toast = FToast();

  /// --- Life-cycle ---
  @override
  void initState() {
    toast.init(context);
    super.initState();
  }

  /// --- Methods ---

  void showToast(String title, {bool isError = false}) {
    toast.showToast(
        child: CustomToast(
          title: title,
          isError: isError,
        ),
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(seconds: 5));
  }

  /// --- Widgets ---

  Widget get titleWithPrice => Text(widget.food.name ?? "", style: Style.body3w4);

  Widget get orderCountWithCategory => Text(Formats.priceFormat(int.parse(widget.food.price.toString()), context),
      style: Style.bodyw3.copyWith(fontWeight: FontWeight.w500));

  List<Widget> titleWithDescription(String title, String description) => [
        Text(title, style: Style.smallTextw3.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 4.0),
        Text(description, style: Style.smallTextw3)
      ];

  List<Widget> titleWithMinAmount(String title, String minAmount) => [
        Text(title, style: Style.smallTextw3.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4.0),
        Text(minAmount, style: Style.smallTextw3)
      ];

  Widget view(context) => Material(
        child: ListView(physics: const ClampingScrollPhysics(), controller: scrollController, children: [
          ImageSliderCell(
            onRatingTap: () {
              scrollController.animateTo(scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
            },
            products: widget.food,
          ),
          Container(
              padding: Style.padding16.copyWith(bottom: 56.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                titleWithPrice,
                const SizedBox(height: 4.0),
                orderCountWithCategory,
                const SizedBox(height: 12.0),
                ...titleWithDescription("Cooking time", "${widget.food.preparationTime.toString()} hour"),
                const SizedBox(height: 12.0),
                ...titleWithDescription("Description", widget.food.description ?? ""),
                const SizedBox(height: 12.0),
                ...titleWithDescription('Ingredients', widget.food.ingredients!.join(", ")),
                const SizedBox(height: 12.0),
              ]))
        ]),
      );

  PreferredSizeWidget get appBar => AppBar(title: Text("Product details", style: Style.bodyw6));

  @override
  Widget build(BuildContext context) => Scaffold(appBar: appBar, body: view(context));
}
