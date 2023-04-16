import 'dart:convert';

Food dataFromJson(String str) => Food.fromJson(json.decode(str));

String dataToJson(Food data) => json.encode(data.toJson());

class Food {
  Food({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
