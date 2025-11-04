import 'package:pd_hour_control_app/repositories/ReportEntity.dart';
import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlRepository {
  Future<List<EmployeeEntity>> getEmployees (){
    final jsonString = await rootBundle.loadString('assets/dictionaryZhHans.json');
    final List<dynamic> hanziList = jsonDecode(jsonString);
    return hanziList.map((e) => DicSimpHanziEntity.fromJson(e)).toList();
  }

  Future<List<SquadEntity>> getSquads() {
    final jsonString = await rootBundle.loadString('assets/dictionaryZhHans.json');
    final List<dynamic> hanziList = jsonDecode(jsonString);
    return hanziList.map((e) => DicSimpHanziEntity.fromJson(e)).toList();
  }

  Future<List<ReportEntity>> getReports() {
    final jsonString = await rootBundle.loadString('assets/dictionaryZhHans.json');
    final List<dynamic> hanziList = jsonDecode(jsonString);
    return hanziList.map((e) => DicSimpHanziEntity.fromJson(e)).toList();
  }
}