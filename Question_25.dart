import 'dart:io';

void main() {
  print('******** WelCome To Letter Guessing Game ********');
  String user;
  String word = 'AWESOME';
  List wordSep = word.split('');
  var guid = ("*" * wordSep.length).split('');
  while (true) {
    stdout.write('Guess A Letter Here : ');
    user = (stdin.readLineSync()!).toString().toUpperCase();
    for (var i = 0; i < wordSep.length; i++) {
      if (user == wordSep[i]) {
        guid[i] = user;
      }
    }
    var guidString = guid.join('');
    var wordString = wordSep.join('');
    print(guidString);
    if (wordString == guidString) {
      print('Hurrah ! you won the Game');
      break;
    }
  }
}
