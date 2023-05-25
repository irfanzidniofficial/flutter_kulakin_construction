class Product {
  final int? id;
  final String title;
  final String? image;
  final String? description;
  final String? priceStreak;
  final int? price;
  final int? stock;

  Product({
    this.id,
    this.title = "Tidak ada Judul",
    this.image,
    this.priceStreak,
    this.price,
    this.description,
    this.stock,
  });
}
