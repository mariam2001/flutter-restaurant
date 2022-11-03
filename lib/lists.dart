List <FoodItem> FoodItems = [
  FoodItem("hambur", "assets/hambur.jpg"),
  FoodItem("Pawsta", "assets/pasta.jpeg"),
  FoodItem("Purrito", "assets/Burrito.JPG"),
  FoodItem("Cappurccino", "assets/Cappuccino.png"),
  FoodItem("Avocato", "assets/Avocado.jpg")
];

class FoodItem {
  late String name;
  late String image;

  FoodItem(this.name, this.image);
}