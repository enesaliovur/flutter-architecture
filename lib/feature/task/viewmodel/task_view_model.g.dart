// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskViewModel on _TaskViewModelBase, Store {
  final _$itemsAtom = Atom(name: '_TaskViewModelBase.items');

  @override
  List<TaskModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<TaskModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$pageLifesAtom = Atom(name: '_TaskViewModelBase.pageLifes');

  @override
  LifeState get pageLifes {
    _$pageLifesAtom.reportRead();
    return super.pageLifes;
  }

  @override
  set pageLifes(LifeState value) {
    _$pageLifesAtom.reportWrite(value, super.pageLifes, () {
      super.pageLifes = value;
    });
  }

  final _$fetchItemsAsyncAction = AsyncAction('_TaskViewModelBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
items: ${items},
pageLifes: ${pageLifes}
    ''';
  }
}
