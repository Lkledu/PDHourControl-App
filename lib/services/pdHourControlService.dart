import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/pdHourControlRepository.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlService {
  PdHourControlRepository _repository = PdHourControlRepository();

  Future<List<SquadEntity>> getSquads(){
    return _repository.getSquads();
  }

  Future<List<EmployeeEntity>> getEmployees() {
    return _repository.getEmployees();
  }
}