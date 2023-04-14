import 'package:flutter/material.dart';

class MyTextAreaWidget extends StatefulWidget {

  const MyTextAreaWidget({super.key});

  @override
 State<MyTextAreaWidget> createState() => _MyTextAreaWidgetState();
}

class _MyTextAreaWidgetState extends State<MyTextAreaWidget> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: const InputDecoration(
        hintText: 'Enter your text here',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
