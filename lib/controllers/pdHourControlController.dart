import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';
import 'package:pd_hour_control_app/services/pdHourControlService.dart';

class PdHourControlController {
  PdHourControlService _service = PdHourControlService();
  List<SquadEntity> getSquads() {
    List<SquadEntity> list = [];
    _service.getSquads().then((e){list = e;});
    return list;
  }

  List<EmployeeEntity> getEmployees() {
    List<EmployeeEntity> list = [];
    _service.getEmployees().then((e){list = e;});
    return list;
  }
}