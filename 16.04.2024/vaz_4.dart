void main(List<String> args) {
  DateTime nowDate = DateTime.now();
  print("Kechagi sana ${nowDate.yesterdayDate()}");
}

// Extension dateTimes
extension DateTimes on DateTime {
    DateTime  yesterdayDate() {
    return this.subtract(Duration(days: 1));
    }
}