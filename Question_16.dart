import 'dart:io';
import 'dart:math';

void main() {
  // Creating the random numbers
  Random random = Random();
  var compNum = (1000 + random.nextInt(9999)).toString();
  // var compNum = 400.toString();
  stdout.write('Let guessed the number between 1000 to 9999 : ');
  // input form user
  var userNum = (stdin.readLineSync()!);
  // convert into a list
  var numMain = userNum.split('');
  int Cows = 0;
  int Bulls = 0;
  for (var i = 0; i < compNum.length; i++) {
    if (numMain[i] == compNum[i]) {
      Cows += 1;
    } else if (compNum.contains(numMain[i])) {
      Bulls += 1;
    }
  }
  var value = numMain.join('');
  print('Computer numbers are : $compNum');
  print('Your numbers are : $value');
  print('Your Cows are  : $Cows');
  print('Your Bulls are : $Bulls ');
}
