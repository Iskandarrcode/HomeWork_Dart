void main() {
  var base = Base();

// objects
  var product1 = Poduct('Telefon', 1500, 10, 'Elektronika');
  var product2 = Poduct('Stol', 200, 5, 'Mebel');
  var product3 = Poduct('Kitob', 20, 50, 'O\'quv');

  base.productsPush(product1);
  base.productsPush(product2);
  base.productsPush(product3);

  base.update(product1, 8);

  base.sortsCatigory('Mebel');
}

// Poduct
class Poduct {
  String name;
  double price;
  int amount;
  String sorts;

  Poduct(this.name, this.price, this.amount, this.sorts);
}

// class Base
class Base {
  List<Poduct> products = [];
// method push products
  void productsPush(Poduct Poduct) {
    products.add(Poduct);
    print('${Poduct.name} Poducti omborga qo\'shildi.');
  }

// mthod update
  void update(Poduct Poduct, int yangiMiqdor) {
    for (var m in products) {
      if (m.name == Poduct.name) {
        m.amount = yangiMiqdor;
        print(
            '${m.name} Poducti miqdori yangilandi. Yangi miqdor: ${m.amount}');
        return;
      }
    }
    print('${Poduct.name} nomli Poduct topilmadi.');
  }

// sorts the catigory
  void sortsCatigory(String sorts) {
    var poductsSorts = products.where((m) => m.sorts == sorts);
    if (poductsSorts.isNotEmpty) {
      print('$sorts kategoriyasiga tegishli Poductlar:');
      for (var m in poductsSorts) {
        print('${m.name} - ${m.price} - ${m.amount}');
      }
    } else {
      print('$sorts kategoriyasiga tegishli Poduct topilmadi.');
    }
  }
}
