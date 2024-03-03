class TaskModel {
  final int id;
  final String title;
  bool? isFinish;

  TaskModel({required this.id, required this.title, this.isFinish});
}
