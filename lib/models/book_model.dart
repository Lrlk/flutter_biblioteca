class BookModel {
  String id;
  String name;
  String author;
  String synopsis;

  String? urlImage;

  BookModel({
    required this.id,
    required this.name,
    required this.author,
    required this.synopsis,
  });

  BookModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        name = map["name"],
        author = map["author"],
        synopsis = map["synopsis"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "author": author,
      "synopsis": synopsis,
      "urlImage": urlImage,
    };
  }
}
