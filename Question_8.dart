//Making a number guessing game (Oh ! that's great)
import 'dart:io';
import 'dart:math';

void main() {
  print('******** WelCome To Number Guessing Game ********');
  print('Guess The Number Between 1 To 100');
  print('In This Guessing Game You Have Ten Chances To Guess It');
  stdout.write('Please Enter Your Name ');
  String userName = stdin.readLineSync().toString().toUpperCase();
  stdout.write('Guess A Number Here : ');
  int userNumber = int.parse(stdin.readLineSync()!);
  Random rand = Random();
  int compNumber = rand.nextInt(101);
  int attempt = 10;
  while (true) {
    attempt -= 1;
    if (userNumber == compNumber) {
      print('--------- WINNER ---------');
      print('Hurrah ! $userName you won the game');
      break;
    }
    if (attempt == 0) {
      print('--------- LOOOOOOOSER ---------');
      print(('Sorrow ! $userName you lose the game'));
      print('Your chances have been over');
      print('The Guessing Number is : $compNumber');
      print('Thank You For Palying');
      break;
    } else if (userNumber < compNumber) {
      print('Your number is low than computer');
      stdout.write('Please Try Again To Guess The Number');
      userNumber = int.parse(stdin.readLineSync()!);
    } else if (userNumber > compNumber) {
      print('Your number high than than computer');
      stdout.write('Please Try Again To Guess The Number');
      userNumber = int.parse(stdin.readLineSync()!);
    }
    print('Remaining chances : $attempt');
  }
}
