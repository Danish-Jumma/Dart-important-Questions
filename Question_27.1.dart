// ****** Same Question Twenty Seven with short and easy way
import 'dart:io';

void main() {
  stdout.write('Enter Your Name : ');
  String userName = stdin.readLineSync()!;
  print(
      '>>> $userName Welcome to the birthday dictionary. We know the birthdays of :');
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
  print('$user : ${info[user]}');
}
