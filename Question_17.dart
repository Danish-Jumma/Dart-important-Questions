import 'dart:io';

void main() {
  stdout.write('What size game board you want to draw ');
  int num = int.parse(stdin.readLineSync()!);
  String row = ' ---';
  String column = '|   ';
  for (var i = 0; i < num; i++) {
    print(row * num);
    print(column * (num + 1));
  }
  print(row * num);
}
