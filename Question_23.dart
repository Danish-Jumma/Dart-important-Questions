import 'dart:math';

void main() {
  Random rand = Random();
  List wordList = [
    'AAHED',
    'AAHING',
    'AAHS',
    'AAL',
    'AALII',
    'AALIIS',
    'AALS',
    'AARDVARK',
    'AARDVARKS',
    'AARDWOLF',
    'AARDWOLVES'
        'AARGH',
    'AARRGH,'
        'AARRGHH',
    'AARTI',
    'AARTIS',
    'AAS',
    'AASVOGEL',
    'AASVOGELS',
    'AB,'
        ' ABA',
    'ABAC',
    'ABACA',
    'ABACAS',
    'ABACI',
    'ABACK',
    'ABACS'
  ];
  String ranWord = wordList[rand.nextInt(wordList.length)];
  print(ranWord);
}
