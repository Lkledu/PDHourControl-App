import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';
import 'package:pd_hour_control_app/services/pdHourControlService.dart';

class PdHourControlController {
  PdHourControlService _service = PdHourControlService();

  List<EmployeeEntity> getEmployees() {
    List<EmployeeEntity> list = [];
    _service.getEmployees().then((e){list = e;});
    return list;
  }

  List<SquadEntity> getSquads() {
    List<SquadEntity> list = [];
    _service.getSquads().then((e){list = e;});
    return list;
  }

  void createSquads(String name) {
    SquadEntity squad = SquadEntity(id: 0, name: name);
    _service.createSquad(squad);
  }

  void createEmployees(String name, int estimatedHours, int squadId) {
    EmployeeEntity employee = EmployeeEntity(id: 0, name: name, estimatedHours: estimatedHours, squadId: squadId);
    _service.createEmployee(employee);
  }
}