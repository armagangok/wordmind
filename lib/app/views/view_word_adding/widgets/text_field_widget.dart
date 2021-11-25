import 'package:flutter/material.dart';

class AddingScreenTextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String label;

  const AddingScreenTextFieldWidget({
    Key? key,
    required this.textController,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: textController,
        keyboardType: TextInputType.multiline,
        cursorHeight: 20,
        decoration: InputDecoration(
          labelText: "$label",
        ),
      ),
    );
  }
}