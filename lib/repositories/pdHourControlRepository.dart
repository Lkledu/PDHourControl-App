import 'package:pd_hour_control_app/repositories/ReportEntity.dart';
import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlRepository {
  Future<List<EmployeeEntity>> getEmployees (){
    return Future.error(Error);
  }

  Future<List<SquadEntity>> getSquads() {
    return Future.error(Error);
  }

  Future<List<ReportEntity>> getReports() {
    return Future.error(Error);
  }
}