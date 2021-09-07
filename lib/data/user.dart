class User {
  String name;
  String imageUrl;
  String timeReading;

  User({required this.imageUrl, required this.name, required this.timeReading});
}

User currentUser = User(
  name: "Jason Khanna",
  imageUrl: "assets/images/user.jpg",
  timeReading: "24 mins",
);
