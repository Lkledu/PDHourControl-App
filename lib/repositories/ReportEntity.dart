class ReportEntity {
  int id;
  String description;
  int employeeId;
  int spentHours;
  DateTime createdAt;

  ReportEntity({
    required this.id,
    required this.description,
    required this.employeeId,
    required this.spentHours,
    required this.createdAt
  });

  ReportEntity.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',
        description = json['description'] ?? [],
        employeeId =  json['employeeId'] ?? [],
        spentHours =  json['spentHours'] ?? [],
        createdAt =  json['createdAt'] ?? [];

  Map<String, dynamic> toJson() => {
    'id': id,
    'description': description,
    'employeeId' : employeeId,
    'spentHours' : spentHours,
    'createdAt' : createdAt,
  };
}