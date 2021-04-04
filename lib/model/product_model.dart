
class DataList {
  DataList({
    this.id,
    this.name,
    this.enName,
    this.sku,
    this.quantity,
    this.originalPrice,
    this.price,
    this.description,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.rating,
    this.totalSold,
    this.colors,
    this.sizes,
    this.canEdit,
    this.categoryId,
    this.totalProduct,
    this.remainingProduct,
  });

  int id;
  String name;
  String enName;
  String sku;
  int quantity;
  double originalPrice;
  double price;
  dynamic description;
  String image1;
  dynamic image2;
  dynamic image3;
  dynamic image4;
  int rating;
  int totalSold;
  List<dynamic> colors;
  List<dynamic> sizes;
  bool canEdit;
  int categoryId;
  int totalProduct;
  int remainingProduct;

  factory DataList.fromJson(Map<String, dynamic> json) => DataList(
    id: json["id"],
    name: json["name"],
    enName: json["en_name"],
    sku: json["sku"],
    quantity: json["quantity"],
    originalPrice: json["original_price"].toDouble(),
    price: json["price"].toDouble(),
    description: json["description"],
    image1: json["image1"],
    image2: json["image2"],
    image3: json["image3"],
    image4: json["image4"],
    rating: json["rating"],
    totalSold: json["total_sold"],
    colors: List<dynamic>.from(json["colors"].map((x) => x)),
    sizes: List<dynamic>.from(json["sizes"].map((x) => x)),
    canEdit: json["can_edit"],
    categoryId: json["category_id"],
    totalProduct: json["total_product"],
    remainingProduct: json["remaining_product"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "en_name": enName,
    "sku": sku,
    "quantity": quantity,
    "original_price": originalPrice,
    "price": price,
    "description": description,
    "image1": image1,
    "image2": image2,
    "image3": image3,
    "image4": image4,
    "rating": rating,
    "total_sold": totalSold,
    "colors": List<dynamic>.from(colors.map((x) => x)),
    "sizes": List<dynamic>.from(sizes.map((x) => x)),
    "can_edit": canEdit,
    "category_id": categoryId,
    "total_product": totalProduct,
    "remaining_product": remainingProduct,
  };
}
