import 'dart:io';

void main() {
  stdout.write('Enter your first value ');
  int variable1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your second value');
  int variable2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your third value');
  int variable3 = int.parse(stdin.readLineSync()!);
  if (variable1 > variable2 && variable1 > variable3) {
    print('Your first value $variable1 is largest value.');
  } else if (variable2 > variable1 && variable2 > variable3) {
    print('Your second value $variable2 is largest value.');
  } else {
    print('Your third value $variable3 is largest value.');
  }
}
