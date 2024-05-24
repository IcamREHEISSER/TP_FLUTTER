class Task {

  final String? id;
  final String texte;
  final DateTime dateAjout;
  bool? status;
  
  Task({
    this.id, 
    required this.texte, 
    required this.dateAjout,
    required this.status
  });

  static Task convertFromMap(String id, Map<String,dynamic> map) {
    return new Task(
      id: id, 
      texte: map["texte"], 
      dateAjout: DateTime.parse(map["date"]), 
      status: map["status"] == "true" ? true : false
    );
  }

  static Map<String,String> convertToMap(Task task) {
    Map<String, String> taskAsMap;
    taskAsMap = {
      "texte": task.texte,
      "date": task.dateAjout.toString(),
      "status": task.status.toString()
    };
    if (task.id != null) {;
      taskAsMap["id"] = task.id!;
    }
    return taskAsMap;
  }

}