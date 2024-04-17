void main(List<String> args) {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print("O'rtachasi: ${numbers.listOrtacha()}");
}

// Extension average value in List
extension ListExtension on List {
    int listOrtacha() {
        int sum = 0;
        int count = 0;
        
        for (int element in this) {
          sum += element;
          count++;
        }
        return (sum ~/ count);
    }
}