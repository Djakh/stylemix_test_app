import 'package:flutter/material.dart';
import 'package:stylemix_test_app/cells/cards/product_card.dart';
import 'package:stylemix_test_app/models/food.dart';
import 'package:stylemix_test_app/routes/routes.dart';
import 'package:stylemix_test_app/theme/style.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Dashboard", style: Style.body2w4),
      ),
      body: view);
}

List<Food> products = [
  Food(
    name: "Osh",
    price: "35000",
    count: 4,
    ingredients: ["amb", "beef", "lots of carrots", "onions"],
    image: ["https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Polu.jpg/274px-Polu.jpg"],
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
    image: ["https://plovnaya1.com/thumb/2/4u536ODndldp0QgIbKuM_A/r/d/lyulya-kebab_iz_govyadiny.jpg"],
    preparationTime: 1,
  ),
  Food(
    name: "Pizza",
    price: "20000",
    count: 8,
    ingredients: ["dough", "tomato sauce", "cheese", "toppings"],
    image: ["https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/440px-Pizza-3007395.jpg"],
    preparationTime: 3,
    description:
        "Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients.",
  ),
  Food(
    name: "Sushi",
    price: "25000",
    count: 12,
    ingredients: ["rice", "fish", "seaweed", "vegetables"],
    image: ["https://www.sushi-time.uz/wp-content/uploads/2020/12/new-year-2023-1-650x897.jpg"],
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
      "https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg"
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
      image: ["https://i.ytimg.com/vi/eV5lCtmxGuk/maxresdefault.jpg"],
      preparationTime: 10,
      description:
          "A salad is a dish consisting of a mixture of small pieces of food, usually vegetables. However, different varieties of salad may contain virtually any type of ready"),
  // Add more Food objects with different data
];
