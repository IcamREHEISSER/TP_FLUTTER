import 'package:flutter/material.dart';

import '../model/task.dart';

class TaskTile extends StatelessWidget {
  
  const TaskTile({required this.task, required this.onDelete, required this.onChecked});

  final Task task;
  final void Function(String) onDelete;
  final void Function(String, bool) onChecked;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: task.status ? Color.fromARGB(255, 100, 250, 100) : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(task.texte, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text(task.dateAjout.toString()),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon : Icon(Icons.delete), 
                    onPressed: () => onDelete(task.id ?? "")),
                  IconButton(
                    icon : task.status ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank), 
                    onPressed: () => onChecked(task.id ?? "", !(task.status))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}