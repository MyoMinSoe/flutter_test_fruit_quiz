import 'package:flutter/material.dart';
import 'package:quizz/new_version/fruit_model_and_list/fruit_list.dart';

class UserAnswerLetter extends StatelessWidget {
  const UserAnswerLetter({
    super.key,
    required this.index,
    required this.showanswer,
  });

  final int index;
  final List<String> showanswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < FruitList().fruit[index].name.length; i++)
            Text(
              showanswer[i],
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
        ],
      ),
    );
  }
}
