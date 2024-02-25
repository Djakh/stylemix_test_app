import 'package:flutter/material.dart';
import 'package:stylemix_test_app/cells/cards/product_card.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/routes/routes.dart';
import 'package:stylemix_test_app/theme/style.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  void openProductsDetailsScreen(Food food, BuildContext context) async {
    await Navigator.of(context).pushNamed(AppRoutes.details, arguments: food);
  }

  Widget get view => ListView.separated(
      padding: Style.padding16,
      itemBuilder: (_, index) => ProductCard(
            ontap: () => openProductsDetailsScreen(products[index], context),
            food: products[index],
          ),
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemCount: products.length);

  @override
  Widget build(BuildContext context) => view;
}
List<Food> products = [
  Food(
    name: "Osh",
    price: "35000",
    count: 4,
    ingredients: ["amb", "beef", "lots of carrots", "onions"],
    image: [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Polu.jpg/274px-Polu.jpg"
    ],
    preparationTime: 2,
    description:
        "Plov, also known as pilaf, is a rice dish that is popular in many countries, particularly in Central Asia, the Middle East, and South Asia. It is made by cooking rice with various spices, vegetables, and meat or fish. The rice is usually cooked in a seasoned broth, and the dish is often garnished with herbs, nuts, and dried fruits.",
  ),
  Food(
    name: "Kabob",
    price: '15000',
    ingredients: ['beef', 'lamb', "chicken"],
    description:
        "Kebabs consist of cut up or ground meat, sometimes with vegetables and various other accompaniments according to the specific recipe. Although kebabs are typically cooked on a skewer over a fire, some kebab dishes are oven-baked in a pan, or prepared as a stew such as tas kebab",
    count: 10,
    image: [
      "https://plovnaya1.com/thumb/2/4u536ODndldp0QgIbKuM_A/r/d/lyulya-kebab_iz_govyadiny.jpg"
    ],
    preparationTime: 1,
  ),
  Food(
    name: "Pizza",
    price: "20000",
    count: 8,
    ingredients: ["dough", "tomato sauce", "cheese", "toppings"],
    image: [
      ""
    ],
    preparationTime: 3,
    description:
        "Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients.",
  ),
  Food(
    name: "Sushi",
    price: "25000",
    count: 12,
    ingredients: ["rice", "fish", "seaweed", "vegetables"],
    image: [
      "https://www.thespruceeats.com/thmb/Zs3JdRkFoZEOd5t_KqBWyfx2rjY=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/sushi-close-up-500412994-5a60b74eb39d03003760a57a.jpg"
    ],
    preparationTime: 2,
    description:
        "Sushi is a Japanese dish of prepared vinegared rice, usually with some sugar and salt, accompanying a variety of ingredients, such as seafood, often raw, and vegetables.",
  ),
  Food(
    name: "Burger",
    price: "18000",
    count: 6,
    ingredients: ["beef patty", "bun", "lettuce", "tomato", "cheese"],
    image: [
      "https://www.thespruceeats.com/thmb/YA0O-DenPdACsZCPk4_8rJF0vV0=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/burger-tomato-onion-wooden-table-580156481-59b29e1f6f53ba00116f2ad7.jpg"
    ],
    preparationTime: 5,
    description:
        "A hamburger (short: burger) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.",
  ),
  Food(
    name: "Salad",
    price: "12000",
    count: 15,
    ingredients: ["lettuce", "tomato", "cucumber", "onion", "dressing"],
    image: [
      "https://www.thespruceeats.com/thmb/0gbfS_Gk60s9vneJoSVHQsCzSqY=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/greek-salad-2500-56a20ec13df78cf77272520a.jpg"
    ],
    preparationTime: 10,
    description:
        "A salad is a dish consisting of a mixture of small pieces of food, usually vegetables. However, different varieties of salad may contain virtually any type of ready"
  ),
  // Add more Food objects with different data
];

