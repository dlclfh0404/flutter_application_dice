class Dice {
  final int size;
  late List<int> dice = [];

  Dice({required this.size}) {
    for (int i = 1; i <= size; i++) {
      dice.add(i);
    }
  }

  void shake() {
    dice.shuffle();
  }

  int pick() {
    int res = dice.first; // 결과값
    dice.removeAt(0); // 골라내고 뺴내기
    return res;
  }
}
