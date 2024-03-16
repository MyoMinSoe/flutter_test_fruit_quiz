import 'package:flutter/material.dart';
import 'package:quizz/new_version/fruit_model_and_list/fruit_list.dart';

class FruitImage extends StatelessWidget {
  const FruitImage({
    super.key,
    required this.width,
    required this.height,
    required this.index,
  });

  final double width;
  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Image.asset(
        width: width * 0.6,
        height: height * 0.35,
        FruitList().fruit[index].image,
        fit: BoxFit.contain,
      ),
    );
  }
}
