class SquadEntity {
  int id;
  String name;

  SquadEntity ({
    required this.id,
    required this.name
  });

  SquadEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
        name = json['name'] ?? [];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}