class Car {
  String imgPath;
  String price;
  String location;
  String name;

  Car({
    required this.imgPath,
    required this.price,
    this.location = "Main branch Cars",
    this.name = "Car#",
  });
}

final List<Car> cars = [
  Car(
    name: "BMW M4",
    imgPath: "assets/images/car.jpg",
    price: "500.00",
    location: "Cars Shop",
  ),
  Car(
    name: "Mercedes-Benz C-Class",
    imgPath: "assets/images/car2.jpg",
    price: "400.00",
  ),
  Car(name: "Toyota Supra", imgPath: "assets/images/car3.jpg", price: "700.00"),
  Car(
    name: "Ford Mustang",
    imgPath: "assets/images/car4.jpg",
    price: "800.00",
    location: "Cars Shop",
  ),
  Car(
    name: "Porsche 911",
    imgPath: "assets/images/car5.jpg",
    price: "600.00",
    location: "Cars Shop",
  ),
  Car(
    name: "Lamborghini Huracán",
    imgPath: "assets/images/car6.jpg",
    price: "450.00",
  ),
  Car(name: "Nissan GT-R", imgPath: "assets/images/car7.jpg", price: "650.00"),
  Car(
    name: "Audi RS5",
    imgPath: "assets/images/car8.jpg",
    price: "355.00",
    location: "Cars Shop",
  ),
];
