class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
}

List<Todo> todoList() {
  return [
    Todo(id: '01', todoText: 'Morning exercise', isDone: true),
    Todo(id: '01', todoText: 'Buy groceries', isDone: true),
    Todo(id: '01', todoText: 'Check emails'),
    Todo(id: '01', todoText: 'Team meeting'),
    Todo(id: '01', todoText: 'Work on a mobile app for 2 hours'),
    Todo(id: '01', todoText: 'Dinner with Jerry'),
  ];
}
