import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:week4/feature/task/viewmodel/task_view_model.dart';

class TaskView extends StatelessWidget {
  final TaskViewModel _taskViewModel = TaskViewModel();
  @override
  Widget build(BuildContext context) {
    if (_taskViewModel.context == null) {
      _taskViewModel.setContext(context);
      _taskViewModel.fetchItems();
    }
    return Scaffold(
      appBar: AppBar(title: Observer(builder: (_) {
        return Visibility(
            visible: _taskViewModel.pageLifes == LifeState.LOADING,
            child: CircularProgressIndicator(color: Colors.white,));
      })),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: _taskViewModel.items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Scaffold(
                            appBar: AppBar(),
                            body: Image.network(
                                (_taskViewModel.items[index].imageUrl!)))));
                  },
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(_taskViewModel.items[index].imageUrl!),
                  ),
                  title: Text(_taskViewModel.items[index].description ?? ''),
                ),
              );
            });
      }),
    );
  }
}
