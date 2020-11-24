import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.black,
        value: checkboxState,
        onChanged: toggleCheckboxState,
      );
    );
  }
}

(bool checkboxState) {
setState(() {
isChecked = checkboxState;
});
}





