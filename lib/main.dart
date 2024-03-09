import 'package:flutter/material.dart';
import 'package:quizz/constants/assets.dart';

List<String> fruitImage = [
  Assets.assetsApple,
  Assets.assetsAvocado,
  Assets.assetsBanana,
  Assets.assetsCoconut,
  Assets.assetsGrape,
  Assets.assetsGuava,
  Assets.assetsMango,
  Assets.assetsOrange,
  Assets.assetsPapaya,
  Assets.assetsPeach,
];

List<String> letter = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
];

List<List<String>> imageWord = [];

List<List<String>> result = [];

List<List<String>> resultBtn = [];

bool isVisible = true;

void main() {
  fruitImage.shuffle();
  String tmpWord = '';
  for (int i = 0; i < fruitImage.length; i++) {
    tmpWord = fruitImage[i];
    switch (tmpWord) {
      case Assets.assetsApple:
        letter.shuffle();
        imageWord.addAll([
          [
            'a',
            'p',
            'p',
            'l',
            'e',
            letter[0],
            letter[1],
            letter[2],
          ]
        ]);
        result.addAll([
          [
            'a',
            'p',
            'p',
            'l',
            'e',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsAvocado:
        letter.shuffle();
        imageWord.addAll([
          [
            'a',
            'v',
            'o',
            'c',
            'a',
            'd',
            'o',
            letter[0],
          ]
        ]);
        result.addAll([
          [
            'a',
            'v',
            'o',
            'c',
            'a',
            'd',
            'o',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsBanana:
        letter.shuffle();
        imageWord.addAll([
          [
            'b',
            'a',
            'n',
            'a',
            'n',
            'a',
            letter[0],
            letter[1],
          ]
        ]);
        result.addAll([
          [
            'b',
            'a',
            'n',
            'a',
            'n',
            'a',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsCoconut:
        letter.shuffle();
        imageWord.addAll([
          [
            'c',
            'o',
            'c',
            'o',
            'n',
            'u',
            't',
            letter[0],
          ]
        ]);
        result.addAll([
          [
            'c',
            'o',
            'c',
            'o',
            'n',
            'u',
            't',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsGrape:
        letter.shuffle();
        imageWord.addAll([
          [
            'g',
            'r',
            'a',
            'p',
            'e',
            letter[0],
            letter[1],
            letter[2],
          ]
        ]);
        result.addAll([
          [
            'g',
            'r',
            'a',
            'p',
            'e',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsGuava:
        letter.shuffle();
        imageWord.addAll([
          [
            'g',
            'u',
            'a',
            'v',
            'a',
            letter[0],
            letter[1],
            letter[2],
          ]
        ]);
        result.addAll([
          [
            'g',
            'u',
            'a',
            'v',
            'a',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsMango:
        letter.shuffle();
        imageWord.addAll([
          [
            'm',
            'a',
            'n',
            'g',
            'o',
            letter[0],
            letter[1],
            letter[2],
          ]
        ]);
        result.addAll([
          [
            'm',
            'a',
            'n',
            'g',
            'o',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsOrange:
        letter.shuffle();
        imageWord.addAll([
          [
            'o',
            'r',
            'a',
            'n',
            'g',
            'e',
            letter[0],
            letter[1],
          ]
        ]);
        result.addAll([
          [
            'o',
            'r',
            'a',
            'n',
            'g',
            'e',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsPapaya:
        letter.shuffle();
        imageWord.addAll([
          [
            'p',
            'a',
            'p',
            'a',
            'y',
            'a',
            letter[0],
            letter[1],
          ]
        ]);
        result.addAll([
          [
            'p',
            'a',
            'p',
            'a',
            'y',
            'a',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
      case Assets.assetsPeach:
        letter.shuffle();
        imageWord.addAll([
          [
            'p',
            'e',
            'a',
            'c',
            'h',
            letter[0],
            letter[1],
            letter[2],
          ]
        ]);
        result.addAll([
          [
            'p',
            'e',
            'a',
            'c',
            'h',
          ]
        ]);
        resultBtn.addAll([
          [
            ' ',
            ' ',
            ' ',
            ' ',
            ' ',
          ]
        ]);
        break;
    }
    imageWord[i].shuffle();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Quizz App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Quizz App Bar'),
          shadowColor: Colors.deepOrange,
          elevation: 3,
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int imageIndex = 0;
  int wrong = 0;
  int correct = 0;
  List<String> answer = [];
  int btnIndex = 0;

  int total = 0;

  void chooseAnswer(String choosenanswer) {
    answer.add(choosenanswer);
    resultBtn[imageIndex].replaceRange(btnIndex, btnIndex + 1, [choosenanswer]);
    btnIndex++;
    String answerWord = answer.toString();
    String resultWord = result[imageIndex].toString();
    if (result[imageIndex].length == answer.length) {
      if (answerWord == resultWord) {
        correct++;
      } else {
        wrong++;
      } // Wrong/Correct Count
      imageIndex++;
      btnIndex = 0;
      answer.clear();
    }
    if (imageIndex == fruitImage.length) {
      imageIndex = fruitImage.length - 1;
      isVisible = false;
      String snackbar =
          'Total Answer : ${wrong + correct}\nWrong Answer : $wrong\nCorrect Answer : $correct\nFINISH ALL QUESTIONS\n( no more question left )';

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            snackbar,
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(255, 71, 133, 73),
          duration: const Duration(seconds: 10),
          showCloseIcon: true,
          closeIconColor: Colors.white,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wrong - $wrong',
                      style: const TextStyle(
                        color: Color.fromARGB(253, 216, 14, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Correct - $correct',
                      style: const TextStyle(
                        color: Color.fromARGB(252, 0, 177, 12),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Image.asset(
                  fruitImage[imageIndex],
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < resultBtn[imageIndex].length; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            alignment: Alignment.center,
                            width: 30,
                            child: Text(
                              resultBtn[imageIndex][i].toUpperCase(),
                              style: const TextStyle(
                                fontSize: 30,
                                letterSpacing: 15,
                              ),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < result[imageIndex].length; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 30,
                            height: 3,
                            color: Colors.deepPurple,
                          )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Visibility(
                  visible: isVisible,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0;
                              i <= imageWord[imageIndex].length - 5;
                              i++)
                            ElevatedButton(
                              onPressed: () {
                                chooseAnswer(imageWord[imageIndex][i]);
                                setState(() {});
                              },
                              child: Text(
                                imageWord[imageIndex][i].toUpperCase(),
                                style: const TextStyle(fontSize: 25),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 4;
                              i <= imageWord[imageIndex].length - 1;
                              i++)
                            ElevatedButton(
                              onPressed: () {
                                chooseAnswer(imageWord[imageIndex][i]);
                                setState(() {});
                              },
                              child: Text(
                                imageWord[imageIndex][i].toUpperCase(),
                                style: const TextStyle(fontSize: 25),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
