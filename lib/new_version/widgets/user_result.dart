import 'package:flutter/material.dart';

class UserResult extends StatelessWidget {
  const UserResult({
    super.key,
    required this.correct,
    required this.wrong,
  });

  final int correct;
  final int wrong;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('CORRECT [ $correct ]'),
        Text('WRONG [ $wrong ]'),
      ],
    );
  }
}
