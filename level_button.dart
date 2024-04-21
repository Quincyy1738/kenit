import 'package:flutter/material.dart';
import 'level_1.dart';
import 'level_10.dart';
import 'level_2.dart';
import 'level_3.dart';
import 'level_4.dart';
import 'level_5.dart';
import 'level_6.dart';
import 'level_7.dart';
import 'level_8.dart';
import 'level_9.dart';

class LevelButton extends StatefulWidget {
  const LevelButton({
    Key? key,
    required this.level,
    required this.isUnlocked,
    required this.score,
  }) : super(key: key);

  final int level;
  final bool isUnlocked;
  final String score;

  @override
  _LevelButtonState createState() => _LevelButtonState();

  void updateScore(String newScore) {}
}

class _LevelButtonState extends State<LevelButton> {
  String score = '0';

  void Function(String newScore)? get updateScore => null;

  @override
  void initState() {
    super.initState();
    score = widget.score;
  }

  bool isLevelAvailable() {
    return widget.isUnlocked;
  }

  @override
  Widget build(BuildContext context) {
    String buttonName = '';
    switch (widget.level) {
      case 1:
        buttonName = 'Addition Integers with Like sign ($score/10)';
        break;
      case 2:
        buttonName = 'Addition of Integers with Unlike signs ($score/10)';
        break;
      case 3:
        buttonName = 'Subtraction of Integers with Like signs ($score/10)';
        break;
      case 4:
        buttonName = 'Subtraction of Integers with Unlike signs ($score/10)';
        break;
      case 5:
        buttonName = 'Addition and Subtraction of Integers ($score/10)';
        break;
      case 6:
        buttonName = 'Multiplication of Integers with Like signs ($score/10)';
        break;
      case 7:
        buttonName = 'Multiplication of Integers with Unlike signs ($score/10)';
        break;
      case 8:
        buttonName = 'Division of Integers with Like signs ($score/10)';
        break;
      case 9:
        buttonName = 'Division of Integers with Unlike signs ($score/10)';
        break;
      case 10:
        buttonName = 'Multiplication and Division of Integers ($score/10)';
        break;
      default:
        break;
    }
    return ElevatedButton(
      onPressed: () {
        if (isLevelAvailable()) {
          switch (widget.level) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage1((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage2((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage3((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage4((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 5:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage5((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 6:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage6((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 7:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage7((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 8:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage8((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 9:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage9((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            case 10:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage10((newScore) {
                    widget.updateScore(newScore);
                    setState(() {
                      score = newScore;
                    });
                  }),
                ),
              );
              break;
            default:
              break;
          }
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.blue.withOpacity(0.7),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
      ),
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
