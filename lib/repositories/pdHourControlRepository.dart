import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pd_hour_control_app/config/environmentConfig.dart';
import 'package:pd_hour_control_app/repositories/ReportEntity.dart';
import 'package:pd_hour_control_app/repositories/employeeEntity.dart';
import 'package:pd_hour_control_app/repositories/squadEntity.dart';

class PdHourControlRepository {
  Future<int> postEmployees (EmployeeEntity employee) async {
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

  Future<int> postSquads(SquadEntity squad) async {
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

  Future<int> postReports(ReportEntity report) async{
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
}