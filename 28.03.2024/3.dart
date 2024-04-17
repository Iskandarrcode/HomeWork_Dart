/*Masalan, ikkita ro'yxatni oling:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
va faqat ular orasida umumiy bo'lgan elementlarni o'z ichiga olgan
(takroriy nusxalarsiz) ro'yxatni qaytaradigan dastur yozing. Dasturingiz har
xil o'lchamdagi ikkita ro'yxatda ishlashiga ishonch hosil qiling.
Natija: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 21, 34, 55, 89] */

void main(List<String> args) {
    List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List ls = [];

// drinking cycles
    for (var i = 0; i < b.length; i++) {
        for (var j = 0; j < a.length; j++) {
            // identifying a long list
            if (b.length > a.length) {
                // numbers in both lists
                if (b[i] == a[j]) {
                    // 3 - add to list
                    ls.add(b[i]);
                }
            }
            // otherwise
            else {
                if (a[j] == b[i]) {
                    ls.add(a[j]);
                }
            }
        }
    }
    print(ls);
// remove duplicate numbers
    for (int i = 0; i < ls.length; i++) {
        for (int j = i + 1; j < ls.length; j++) {
            if (ls[i] == ls[j]) {
                ls.remove(ls[i]);
            }
        }
    }
    print(ls);

}