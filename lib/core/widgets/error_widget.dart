import 'package:flutter/cupertino.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
