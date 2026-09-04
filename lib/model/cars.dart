class Car {
  String imgPath;
  String price;
  String location;
  String name;

  Car({required this.imgPath, required this.price,
   this.location = "Main branch Cars",
   this.name = "Car#"
   });
}

final List<Car> cars = [
  Car(name: "Car1", imgPath: "assets/images/car.jpg", price: "500.00", location: "Cars Shop"),
  Car(name: "Car2", imgPath: "assets/images/car2.jpg", price: "400.00"),
  Car(name: "Car3", imgPath: "assets/images/car3.jpg", price: "700.00"),
  Car(name: "Car4", imgPath: "assets/images/car4.jpg", price: "800.00", location: "Cars Shop"),
  Car(name: "Car5", imgPath: "assets/images/car5.jpg", price: "600.00", location: "Cars Shop"),
  Car(name: "Car6", imgPath: "assets/images/car6.jpg", price: "450.00"),
  Car(name: "Car7", imgPath: "assets/images/car7.jpg", price: "650.00"),
  Car(name: "Car8", imgPath: "assets/images/car8.jpg", price: "355.00", location: "Cars Shop"),
];
