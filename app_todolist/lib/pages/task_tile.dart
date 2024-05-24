import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/task.dart';

class TaskTile extends StatefulWidget {
  
  TaskTile({required this.task, required this.onDelete, required this.onChecked});

  final Task task;
  final void Function(String) onDelete;
  final void Function(String, bool) onChecked;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  final FirebaseFirestore database = FirebaseFirestore.instance;

  Color tileColor = Colors.white;

  Color _getTileColor() {
    if (widget.task.status == null) {
      return tileColor;
    } else if (widget.task.status!) {
      tileColor = Color.fromARGB(255, 100, 250, 100);
    } else {
      tileColor = Colors.white;
    }
    return tileColor;
  }

  _checkTask() async {
    bool newStatus = !(widget.task.status!);
    setState(() => widget.task.status = null);
    database.collection("Tasks").doc(widget.task.id)
    .update({"status": newStatus.toString()})
    .then((doc) {widget.onChecked(widget.task.id ?? "", newStatus);});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color:  _getTileColor(),
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
                  Text(widget.task.texte, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text(widget.task.dateAjout.toString()),
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
                    onPressed: () => widget.onDelete(widget.task.id ?? "")),
                  if (widget.task.status == null)  
                    CircularProgressIndicator()
                  else
                    IconButton(
                      icon : widget.task.status! ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank), 
                      onPressed: () => _checkTask()
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}