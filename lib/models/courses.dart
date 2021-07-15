class Courses {
  final String name, imageUrl, author;
  final double price, rating;
  Courses({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.author,
    required this.rating,
  });
  static List<Courses> fetchAll() {
    return [
      Courses(
        name: "CEH Ethical Hacking",
        imageUrl:
            "https://images.pexels.com/photos/38275/anonymous-studio-figure-photography-facial-mask-38275.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        price: 90,
        author: "Kevin Mitnick",
        rating: 4.0,
      ),
      Courses(
        name: "Web development",
        imageUrl:
            "https://images.pexels.com/photos/5952647/pexels-photo-5952647.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        price: 60,
        author: "Dennis Ivy",
        rating: 3.5,
      ),
      Courses(
        name: "App Development",
        imageUrl:
            "https://images.pexels.com/photos/5952651/pexels-photo-5952651.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        price: 50,
        author: "Reso Coder",
        rating: 4.5,
      ),
    ];
  }
}
