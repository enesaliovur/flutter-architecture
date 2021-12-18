import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import 'package:week4/core/network/network_manager.dart';
import 'package:week4/feature/task/model/task_model.dart';
import 'package:week4/feature/task/service/ITaskService.dart';
import 'package:week4/feature/task/service/task_service.dart';

part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  BuildContext? context;
  late ITaskService taskService;

  @observable
  List<TaskModel> items = [];
  @observable
  LifeState pageLifes  = LifeState.IDDLE;

  _TaskViewModelBase({this.context}) {
    taskService = TaskService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    this.context = context;
  }

@action
  Future<void> fetchItems() async {
    pageLifes = LifeState.LOADING;
    items = await taskService.fetchAllData();
     pageLifes = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE
}
