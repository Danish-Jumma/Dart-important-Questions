//Creating A Birthdays Progarm
import 'dart:io';

void main() {
  stdout.write('Enter Your Name : ');
  String UserName = stdin.readLineSync()!.toString().toUpperCase();
  print(
      '>>> Welcome $UserName to the birthday dictionary. We know the birthdays of : ');
  Map info = {
    'Albert Einstein': 'March 14, 1879',
    'Benjamin': 'January 17, 1706',
    'Ada Lovelace': 'December 10, 1815'
  };
  info.forEach((key, value) {
    print(key);
  });
  stdout.write('>>> Whose birthday do you want to look up? ');
  String user = (stdin.readLineSync()!).toString();
  if (user == 'Albert Einstein') {
    print('Albert Einstein' + ' : ' + info['Albert Einstein']);
    print('Thank You $UserName For Using our Service');
  } else if (user == 'Benjamin') {
    print('Benjamin' + ' : ' + info['Benjamin']);
    print('Thank You $UserName For Using our Service');
  } else if (user == 'Ada Lovelace') {
    print('Ada Lovelace' + ' : ' + info['Ada Lovelace']);
    print('Thank You $UserName For Using our Service');
  } else {
    print('Oops ! You did not write correct name');
  }
}
