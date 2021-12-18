import 'dart:io';

import 'package:dio/dio.dart';
import 'package:week4/feature/task/model/task_model.dart';
import 'package:week4/feature/task/service/ITaskService.dart';

part "task_service_endpoints.dart";

class TaskService extends ITaskService {
  TaskService(Dio dio) : super(dio);
  @override
  Future<List<TaskModel>> fetchAllData() async {
    final response = await dio.get(_TaskServiceEndPoints.DOGS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => TaskModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
