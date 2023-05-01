import 'dart:io';
import 'dart:math';

void main() {
  Random randNum = Random();
  var compNum = randNum.nextInt(100);
  print(
      'Say yes if your number match, write high low if your numbers is low and write low if your numbers is high');
  List compList = List.generate(100 + 1, (i) => i);
  String userNum;
  int attempt = 0;
  do {
    attempt += 1;
    stdout.write('Is your number $compNum : ');
    userNum = stdin.readLineSync()!;
    if (userNum == 'yes') {
      print('Hurrah ! I juessed the correct number');
      break;
    } else if (userNum == 'low') {
      compList = compList.where((e) => e > compNum).toList();
      compNum = compList[randNum.nextInt(compList.length)];
    } else if (userNum == 'high') {
      compList = compList.where((e) => e < compNum).toList();
      compNum = compList[randNum.nextInt(compList.length)];
    }
    print('Attempt : $attempt');
  } while (true);
}
