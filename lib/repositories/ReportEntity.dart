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
}