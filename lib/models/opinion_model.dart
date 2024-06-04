class OpinionModel {
  String id;
  String opinion;
  String date;

  OpinionModel({required this.id, required this.opinion, required this.date});

  OpinionModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        opinion = map["opinion"],
        date = map["date"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "opinion": opinion,
      "date": date,
    };
  }
}
