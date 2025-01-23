


import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/task.dart';
import '../repositories/task_repository.dart';

final taskViewModelProvider = StateNotifierProvider<TaskViewModel, List<Task>>(
      (ref) => TaskViewModel(ref.read(taskRepositoryProvider)),
);

class TaskViewModel extends StateNotifier<List<Task>> {
  final TaskRepository _repository;

  TaskViewModel(this._repository) : super([]) {
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final tasks = await _repository.getAllTasks();
    state = tasks;
  }

  Future<void> addTask(Task task) async {
    await _repository.addTask(task);
    _loadTasks();
  }

  Future<void> updateTask(Task task) async {
    await _repository.updateTask(task);
    _loadTasks();
  }

  Future<void> deleteTask(int id) async {
    await _repository.deleteTask(id);
    _loadTasks();
  }
}