import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/pdHourControlRepository.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlService {
  final PdHourControlRepository _repository = PdHourControlRepository();

  Future<int> createSquad(SquadEntity squad) async {
    return _repository.postSquad(squad);
  }

  Future<int> createEmployee(EmployeeEntity employee) async {
    return _repository.postEmployee(employee);
  }

  Future<List<EmployeeEntity>> getEmployees() async {
    return _repository.getEmployees();
  }

  Future<List<SquadEntity>> getSquads() async {
    return _repository.getSquads();
  }
}