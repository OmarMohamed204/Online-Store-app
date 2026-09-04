class Flower {
  String imgPath;
  String price;
  String location;
  String name;

  Flower({
    required this.imgPath,
    required this.price,
    this.location = "Main branch",
    this.name = "Flowers#",
  });
}

final List<Flower> flowers = [
  Flower(
    imgPath: "assets/images/flower1.jpg",
    price: "10.00",
    location: "Flower Shop",
    name: "Flower1",
  ),
  Flower(imgPath: "assets/images/flower2.jpg", price: "11.00", name: "Flower2"),
  Flower(
    imgPath: "assets/images/flower3.jpg",
    price: "7.00",
    location: "Flower Shop",
    name: "Flower3",
  ),
  Flower(imgPath: "assets/images/flower4.jpg", price: "7.00", name: "Flower4"),
  Flower(
    imgPath: "assets/images/flower5.jpg",
    price: "12.00",
    location: "Flower Shop",
    name: "Flower5",
  ),
  Flower(imgPath: "assets/images/flower6.jpg", price: "13.00", name: "Flower6"),
  Flower(imgPath: "assets/images/flower7.jpg", price: "10.00", name: "Flower7"),
  Flower(
    imgPath: "assets/images/flower8.jpg",
    price: "9.00",
    location: "Flower Shop",
    name: "Flower8",
  ),
];
