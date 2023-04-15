void main() {
  List<int> winningNumbers = [12, 6, 34, 22, 41, 9];

  List<int> ticket1 = [45, 2, 9, 18, 12, 33];
  List<int> ticket2 = [41, 17, 26, 32, 7, 35];

  checkNumbers(winningNumbers, ticket2);
  //printSong(5);
}

void checkNumbers(List<int> winningNumbers, List<int> myNumbers) {
  int matchCount = 0;
  for (int number in myNumbers) {
    if (winningNumbers.contains(number)) {
      matchCount += 1;
    }
  }
  print('You have $matchCount matches for the lottery !!!');
}

void printSong(int currentDay) {
  for (int i = currentDay; i >= 0; i--) {
    var reminder = i - 1;
    if (i == 0) {
      print(
          'No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.');
    } else if (i == 1) {
      print(
          '$i bottle of beer on the wall, $i bottle of beer.\nTake one down and pass it around, no more bottles of beer on the wall.');
    } else {
      print(
          '$i bottles of beer on the wall, $i bottles of beer.\nTake one down and pass it around, $reminder bottles of beer on the wall.');
    }
  }
}
