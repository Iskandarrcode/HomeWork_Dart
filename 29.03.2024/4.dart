import 'dart:io';
void main(List<String> args) {
    geometry();
}

void geometry() {
    // Section selection
    while (true) {
        print("\n1.To'rtburchak -->");
        print("2.Kvadrat -->");
        print("3.Doira -->");
        print("0.Exit -->");

    int choose = int.parse(stdin.readLineSync()!);

    switch (choose) {
        // 1 section "To'rtburchak -->"
        case 1:
            print("1.To'rtburchak --> S = Yuzasini topish: ");
            print("2.To'rtburchak --> P = Peremetrini topish: ");

            int tortbur = int.parse(stdin.readLineSync()!);
            switch (tortbur) {
                // input a and b
                case 1:
                    stdout.write("A tomonini kiriting: \n");
                    int a = int.parse(stdin.readLineSync()!);
                    stdout.write("B tomonini kiriting: \n");
                    int b = int.parse(stdin.readLineSync()!);
                    print("S = ${a * b}");
                    break;
                 case 2:
                //  input a adn b
                    stdout.write("A tomonini kiriting: \n");
                    int a = int.parse(stdin.readLineSync()!);
                    stdout.write("B tomonini kiriting: \n");
                    int b = int.parse(stdin.readLineSync()!);
                    print("P = ${2 * (a + b)}");
                    break;
            }
            break;
        case 2:
        // Section "Kvadrat "
            print("1.Kvadrat --> S = Yuzasini topish: ");
            print("2.Kvadrat --> P = Peremetrini topish: ");

            int tortbur = int.parse(stdin.readLineSync()!);
            switch (tortbur) {
                case 1:
                // input a
                    stdout.write("Kvadrat tomonini kiriting: \n");
                    int a = int.parse(stdin.readLineSync()!);
                    print("S = ${a * a}");
                    break;
                 case 2:
                //  input b
                    stdout.write("Kvadrat tomonini kiriting: \n");
                    int b = int.parse(stdin.readLineSync()!);
                    print("P = ${4 * b}");
                    break;
            }
            break;
        case 3:
        // Section "Doira" and input R
            stdout.write("Doiraning R = radiusini kiriting: ");
            int r = int.parse(stdin.readLineSync()!);
            print("S = ${3.14 * r * r}");
        // Exit 
        default:exit(0);
    }
    }
}