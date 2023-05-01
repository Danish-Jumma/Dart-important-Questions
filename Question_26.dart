import 'dart:io';
import 'dart:math';

void main() {
  print('******** WellCome To Letter Guessing Game ********');
  String user;
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
  stdout.write('Enter Your Name Here : ');
  String name = stdin.readLineSync()!.toUpperCase();
  Random rand = Random();
  String randomWord = words[rand.nextInt(words.length)];
  String word = randomWord;
  List wordSep = word.split('');
  var guid = ("*" * wordSep.length).split('');
  int attempt = randomWord.length + 1;
  String empty = '';
  while (true) {
    stdout.write('Guess A Letter Here : ');
    user = (stdin.readLineSync()!).toString().toUpperCase();
    print(randomWord);
    for (var i = 0; i < wordSep.length; i++) {
      if (user == wordSep[i]) {
        guid[i] = user;
        attempt += 1;
        empty = 'You Are going correct';
        print(empty);
      }
    }
    var guidString = guid.join('');
    var wordString = wordSep.join('');
    print(guidString);
    if (wordString == guidString) {
      print('******** WINNER ********');
      print('Hurrah ! you won the Game');
      print('$name You Have Brillaint Mind');
      break;
    }
    attempt -= 1;
    print('You Have Left $attempt Chances');
    if (attempt <= 4) {
      print('Play Carefully You Have Now Less Chances');
    }
    print('Your Chances : $attempt');
    if (attempt == 0) {
      print('******** LOOOOOOOSER ********');
      print('Hahahahahaha ! $name You Lose The Game');
      print('Do not worry about that try again');
      break;
    }
  }
}
