import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          label: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text(label)],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.1),
              // width: 0.4,
            ),
          ),
        ),
      ),
    );
  }
}
