import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        widthFactor: MediaQuery.of(context).size.width,
        heightFactor: MediaQuery.of(context).size.height,
        child: Text(widget.error),
      ),
    );
  }
}
