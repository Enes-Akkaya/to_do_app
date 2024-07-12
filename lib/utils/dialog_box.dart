import 'package:flutter/material.dart';
import 'package:untitled2/utils/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyanAccent,
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Decide on a goal"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(text: "Save", onPressed: onSave,),
              const SizedBox(width: 15,),
              Button(text: "Cancel", onPressed: onCancel,),
            ],
          )
        ],),
      ),
    );
  }
}
