import 'package:flutter/material.dart';

class ExceptionWidget extends StatelessWidget {
  final String _exception;
  ExceptionWidget(String exception) : _exception = exception;

  @override
  Widget build(BuildContext context) {
    return Text(_exception);
  }
}