import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizz/new_version/fruit_model_and_list/fruit_list.dart';
import 'package:quizz/new_version/fruit_model_and_list/fruit_model.dart';

Random random = Random();

class FruitMainBody extends StatefulWidget {
  @override
  State<FruitMainBody> createState() => _FruitMainBodyState();
}

class _FruitMainBodyState extends State<FruitMainBody> {
  List<FruitModel> fruitrandom = [];
  List<String> fImage = [];
  List<List<String>> fname = [];
  int correct = 0;
  int wrong = 0;
  int index = 0;
  List<String> showanswer = List.generate(8, (index) => ' ');
  int showanswerIndex = 0;
  List<String> userAnswer = [];
  @override
  void initState() {
    fruitrandom.addAll(FruitList().fruit);
    fruitrandom.shuffle();
    for (var i = 0; i < fruitrandom.length; i++) {
      fImage.add(fruitrandom[i].image);
      fname.add(fruitrandom[i].name.split(''));
      if (fname[i].length != 8) {
        while (fname[i].length != 8) {
          fname[i].add(String.fromCharCodes([random.nextInt(25) + 97]));
        }
      }
      fname[i].shuffle();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.blue.withOpacity(0.2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'CORRECT : $correct',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 1, 146, 5),
                ),
              ),
              Text(
                'WRONG : $wrong',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 185, 14, 2),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          //***** correct   wrong ******************************** */
          Image.asset(
            width: width * 0.6,
            height: height * 0.35,
            fImage[index],
            fit: BoxFit.contain,
          ),
          //****** fruit image *********************************** */
          const SizedBox(height: 5),
          SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < fruitrandom[index].name.length; i++)
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 10),
                        color: Colors.blue.withOpacity(0.2),
                        width: 30,
                        height: 30,
                        child: Text(
                          showanswer[i],
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < fruitrandom[index].name.length; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 30,
                        height: 3,
                        color: Colors.blue,
                      ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          //*********** user answer letter *************************** */
          SizedBox(
            height: height * 0.3,
            width: width * 0.8,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: fname[index].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder()),
                    onPressed: () {
                      userAnswer.add(fname[index][i]);
                      showanswer.replaceRange(showanswerIndex,
                          showanswerIndex + 1, [fname[index][i]]);
                      showanswerIndex++;
                      if (userAnswer.length ==
                          fruitrandom[index].name.split('').length) {
                        if (listEquals(
                            userAnswer, fruitrandom[index].name.split(''))) {
                          correct++;
                        } else {
                          wrong++;
                        }
                        userAnswer.clear();
                        showanswerIndex = 0;
                        showanswer.clear();
                        showanswer = List.generate(8, (index) => ' ');

                        if (index == fruitrandom.length - 1) {
                          index = 0;
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                alignment: Alignment.center,
                                shape: const BeveledRectangleBorder(),
                                contentTextStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                                content: SizedBox(
                                  width: width * 0.6,
                                  height: height * 0.2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text('Your Answer Result'),
                                      Text(
                                        'Correct  :  $correct',
                                      ),
                                      Text(
                                        'Wrong  :  $wrong',
                                      ),
                                      Text(
                                        'Total  :  ${correct + wrong}',
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      exit(0);
                                    },
                                    child: const Text(
                                      'Quit',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                        index++;
                      }
                      setState(() {});
                    },
                    child: Text(
                      fname[index][i].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  );
                }),
          ),
          //************* letter button ************************** */
        ],
      ),
    );
  }
}
