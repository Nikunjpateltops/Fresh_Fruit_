class FruitModel {
  final String assetImage;
  final String text;
  final int price;
  final bool? status;

  FruitModel(
      {required this.assetImage,
      required this.text,
      required this.price,
      this.status});
}

List<FruitModel> fruitData = [
  FruitModel(
      assetImage: 'assets/images/appledownload.jpeg',
      text: "Apple",
      price: 100,
      status: false),
  FruitModel(
      assetImage: 'assets/images/graps.jpeg',
      text: "Grapes",
      price: 80,
      status: false),
  FruitModel(
      assetImage: 'assets/images/mango.webp',
      text: "Mango",
      price: 160,
      status: false),
  FruitModel(
      assetImage: 'assets/images/strobery1.jpeg',
      text: "Strobery",
      price: 60,
      status: false),
  FruitModel(
      assetImage: 'assets/images/chiku1.jpeg',
      text: "Chiku",
      price: 90,
      status: false),
  FruitModel(
      assetImage: 'assets/images/dragon2.jpeg',
      text: "Dragonfruit",
      price: 200,
      status: false),
  FruitModel(
      assetImage: 'assets/images/kivi.webp',
      text: "Kiwi",
      price: 140,
      status: false)
];
