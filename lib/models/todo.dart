class Todo {
  String id;
  String title;
  bool isDone;

  Todo({required this.title, required this.id, this.isDone = false});

  static List<Todo> todolist() {
    return [
      Todo(title: "berbere git", id: "1", isDone: true),
      Todo(title: "Domates al", id: "2"),
      Todo(title: "Ödevini yap", id: "3", isDone: false),
      Todo(title: "Ödevini yap", id: "3", isDone: false),
    ];
  }
}
