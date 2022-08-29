class CatalogModel{
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "",
      price: 109900,
      color: "Pacific Blue",
      image: "https://rukminim1.flixcart.com/image/416/416/kg8avm80/mobile/u/c/d/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg?q=70",

    ),
  ];
}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
