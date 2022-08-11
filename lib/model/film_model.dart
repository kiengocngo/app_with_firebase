class FilmModel {
  FilmModel(
      {required this.name,
      required this.category,
      required this.country,
      required this.image,
      this.pss});
  final String name;
  final String category;
  final String country;
  final String image;
  final bool? pss;
}
