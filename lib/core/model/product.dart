class Product {
  final String id;
  final String name;
  final String version;
  final String thumbnail;
  final String createdAt;
  final String description;
  final String? whatsNew;
  final List<String> technologies;

  Product({
    required this.id,
    required this.name,
    required this.version,
    required this.thumbnail,
    required this.createdAt,
    required this.description,
    this.whatsNew,
    this.technologies = const [],
  });
}
