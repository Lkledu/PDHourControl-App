class EmployeeEntity {
  int id;
  String name;
  int estimatedHours;
  int squadId;

  EmployeeEntity( {
    required this.id,
    required this.name,
    required this.estimatedHours,
    required this.squadId,
  });

  EmployeeEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
        name = json['name'] ?? [],
        estimatedHours = json['estimatedHours'] ?? '',
        squadId = json['squadId'] ?? '';

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'estimatedHours': estimatedHours,
    'squadId': squadId,
  };
}