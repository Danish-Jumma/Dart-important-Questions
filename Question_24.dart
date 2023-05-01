import 'dart:io';
import 'dart:math';

// letter guessing game
void main() {
  stdout.write('Enter your name : ');
  String userName = (stdin.readLineSync()).toString().toUpperCase();
  Random rand = Random();
  List words = [
    'HALE',
    'NINE',
    'MAZE',
    'QUIT',
    'RIFT',
    'NAIL',
    'PALM',
    'JUMP',
    'STADIUM',
    'GAME'
  ];
  List randomWords = [
    'ALEH',
    'ENNI',
    'EZAM',
    'TIQU',
    'FTRI',
    'NLIA',
    'ALPM',
    'MJUP',
    'TIUSMAD',
    'AMEG'
  ];
  int randomNumber = rand.nextInt(10);
  String randWord = randomWords[randomNumber];
  String correctWord = words[randomNumber];
  print('The guessing word is : $randWord');
  stdout.write('Try to guess the word : ');
  String user = (stdin.readLineSync()!).toString().toUpperCase();
  String userLetter;
  int attepmt = 3;
  do {
    attepmt = --attepmt;
    print('Your tries : $attepmt');
    if (user == correctWord) {
      print('Congratulation $userName ! You guessed the correct word');
      print('Your are winner');
      break;
    } else if (user != correctWord && attepmt == 0) {
      print('$userName your are loooooooser');
      print('The correct word is : $correctWord');
      break;
    } else {
      stdout.write('Try Again to guess the : ');
      userLetter = stdin.readLineSync().toString().toUpperCase();
      if (userLetter == correctWord) {
        print('Congratulation $userName ! You guessed the correct word');
        print('You are winner');
        break;
      }
    }
  } while (true);
}
