class Food {
  int? id;
  bool? active;
  String? name;
  String? description;
  String? videoUrl;
  String? price;
  int? minAmount;
  int? amount;
  int? preparationTime;
  int? ratingsCount;
  double? ratingsAvg;
  int? rating;
  String? salePrice;
  List<String>? ingredients;
  int? count;
  List<String>? image;

  Food({
    this.id,
    this.name,
    this.image,
    this.description,
    this.videoUrl,
    this.price,
    this.minAmount,
    this.amount,
    this.preparationTime,
    this.active = true,
    this.ingredients,
    this.count,
    this.salePrice,
    this.rating,
    this.ratingsAvg,
    this.ratingsCount,
  });
}