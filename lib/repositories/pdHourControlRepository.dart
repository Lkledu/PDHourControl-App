import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pd_hour_control_app/config/environmentConfig.dart';
import 'package:pd_hour_control_app/repositories/ReportEntity.dart';
import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlRepository {
  Future<int> postEmployee (EmployeeEntity employee) async {
    EmployeeEntity employeeEntity = employee;
    final url = Uri.parse(EnvironmentConfig.urlBase+EnvironmentConfig.urlPostEmployees);

    final response = await http.post(
      url,
      headers: {
        'Content-Type':'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(employeeEntity.toJson())
    );

    if(response.statusCode == 200){
      return 1;
    }

    return -1;
  }

  Future<int> postSquad(SquadEntity squad) async {
    SquadEntity squadEntity = squad;
    final url = Uri.parse(EnvironmentConfig.urlBase+EnvironmentConfig.urlPostEmployees);

    final response = await http.post(
        url,
        headers: {
          'Content-Type':'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(squadEntity.toJson())
    );

    if(response.statusCode == 200){
      return 1;
    }

    return -1;
  }

  Future<int> postReport(ReportEntity report) async{
    ReportEntity reportEntity = report;
    final url = Uri.parse(EnvironmentConfig.urlBase+EnvironmentConfig.urlPostEmployees);

    final response = await http.post(
        url,
        headers: {
          'Content-Type':'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(reportEntity.toJson())
    );

    if(response.statusCode == 200){
      return 1;
    }

    return -1;
  }

  Future<List<EmployeeEntity>> getEmployees() async {
    final url = Uri.parse(EnvironmentConfig.urlBase + EnvironmentConfig.urlGetEmployees);

    final response = await http.get(
      url,
      headers: {
        'Content-Type':'application/json',
        'Accept': 'application/json',
      },
    );

    List<EmployeeEntity> employees = [];
    if(response.statusCode == 200) {
      List employeesRetrived = jsonDecode(response.body);
      employees = employeesRetrived.map((e) => EmployeeEntity.fromJson(e)).toList();
    }
    return employees;
  }

  Future<List<SquadEntity>> getSquads() async {
    final url = Uri.parse(EnvironmentConfig.urlBase + EnvironmentConfig.urlGetSquads);

    final response = await http.get(
      url,
      headers: {
        'Content-Type':'application/json',
        'Accept': 'application/json',
      },
    );

    List<SquadEntity> squads = [];
    if(response.statusCode == 200) {
      List squadsRetrived = jsonDecode(response.body);
      squads = squadsRetrived.map((e) => SquadEntity.fromJson(e)).toList();
    }
    return squads;
  }
}