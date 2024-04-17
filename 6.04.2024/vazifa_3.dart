import 'dart:io';

void main(List<String> args) {
  List maze = [
    [1, 3, 1, 1, 1, 1, 1],
    [1, 0, 0, 0, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 1],
    [0, 2, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 1, 0, 1],
    [1, 0, 0, 0, 0, 0, 1],
    [1, 1, 1, 0, 1, 0, 1]
  ];
  stdout.write('\x1B[2J\x1B[0;0H');
  print("\n                  --> MAZE O'YINIGA HUSH KELIBSIZ <--\n\n");

  print("""Qo'llanma:
    0 = Yurish mumkin bo'lgan yo'lak
    1 = Devor
    2 = O'yinchi
    3 = Finish chizig'i\n\n""");
  print(
      "BUYRUQLARNI KIRITISH QUYDAGICHA_(o'nga, chapga, tepaga, pastga, exit)\n");

  while (true) {
    Game.labyrinth(maze);
  }
}

// CLASS GAME
class Game {
  // METHOD LABYRINTH
  static labyrinth(List maze) {
    // PRINT TABLE LABYRINTH
    print(
        "${maze[0]}\n${maze[1]}\n${maze[2]}\n${maze[3]}\n${maze[4]}\n${maze[5]}\n${maze[6]}\n");
    stdout.write("BUYRUQ KIRITING...   :->  ");
    String? command = stdin.readLineSync()!;
    // SWITCH CASE SECTION
    switch (command) {
      // COMMAND RIGHT
      case "o'nga":
        int a = 0;
        int b = 0;
        stdout.write('\x1B[2J\x1B[0;0H');
        for (int i = 0; i < maze.length; i++) {
          for (var j = 0; j < maze[i].length; j++) {
            if (maze[i][j] == 2) {
              a = i;
              b = j;
            }
          }
        }

        // MAIN SECTION
        if (b != 6) {
          if (maze[a][b + 1] == 1) {
            print("\n...DEVOR...\n\n");
            break;
          }

          // GAME OVER
          if (maze[a][b + 1] == 3) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\nTABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ <--");
            exit(0);
          }

          // EXCHANGE
          if (maze[a][b + 1] == 0) {
            int box = maze[a][b];
            maze[a][b] = maze[a][b + 1];
            maze[a][b + 1] = box;
          }
        }
        //   BREAK TREET
        if (b == 6) {
          stdout.write('\x1B[2J\x1B[0;0H');
          print("\nO'NGA YO'L YO'Q !!!\n");
          break;
        }
        break;

      // COMMAND LEFT
      case "chapga":
        int a = 0;
        int b = 0;
        stdout.write('\x1B[2J\x1B[0;0H');
        for (int i = 0; i < maze.length; i++) {
          for (var j = 0; j < maze[i].length; j++) {
            if (maze[i][j] == 2) {
              a = i;
              b = j;
            }
          }
        }

        // MAIN SECTION
        if (b != 0) {
          if (maze[a][b - 1] == 1) {
            print("\n...DEVOR...\n\n");
            break;
          }

          // GAME OVER
          if (maze[a][b - 1] == 3) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\nTABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ <--");
            exit(0);
          }

          // EXCHANGE
          if (maze[a][b - 1] == 0) {
            int box = maze[a][b];
            maze[a][b] = maze[a][b - 1];
            maze[a][b - 1] = box;
          }
        }
        //   BREAK TREET
        if (b == 0) {
          stdout.write('\x1B[2J\x1B[0;0H');
          print("\nCHAPGA YO'L YO'Q !!!\n");
          break;
        }
        break;

      case "tepaga":
        // COMMAND HIGH
        int a = 0;
        int b = 0;
        stdout.write('\x1B[2J\x1B[0;0H');
        for (int i = 0; i < maze.length; i++) {
          for (var j = 0; j < maze[i].length; j++) {
            if (maze[i][j] == 2) {
              a = i;
              b = j;
            }
          }
        }

        // MAIN SECTION
        if (a != 0) {
          if (maze[a - 1][b] == 1) {
            print("\n...DEVOR...\n\n");
            break;
          }

          // GAME OVER
          if (maze[a - 1][b] == 3) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\nTABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ <--");
            exit(0);
          }

          // EXCHANGE
          if (maze[a - 1][b] == 0) {
            int box = maze[a][b];
            maze[a][b] = maze[a - 1][b];
            maze[a - 1][b] = box;
          }
        }
        //   BREAK TREET
        if (a == 0) {
          stdout.write('\x1B[2J\x1B[0;0H');
          print("\nTEPAGA YO'L YO'Q !!!\n");
          break;
        }
        break;
      // COMMAND LOW
      case "pastga":
        int a = 0;
        int b = 0;
        stdout.write('\x1B[2J\x1B[0;0H');
        for (int i = 0; i < maze.length; i++) {
          for (var j = 0; j < maze[i].length; j++) {
            if (maze[i][j] == 2) {
              a = i;
              b = j;
            }
          }
        }

        // MAIN SECTION
        if (a != 6) {
          if (maze[a + 1][b] == 1) {
            print("\n...DEVOR...\n\n");
            break;
          }

          // GAME OVER
          if (maze[a + 1][b] == 3) {
            stdout.write('\x1B[2J\x1B[0;0H');
            print("\nTABRIKLAYMAN SIZ G'OLIB BO'LDINGIZ <--");
            exit(0);
          }

          // EXCHANGE
          if (maze[a + 1][b] == 0) {
            int box = maze[a][b];
            maze[a][b] = maze[a + 1][b];
            maze[a + 1][b] = box;
          }
        }
        //   BREAK TREET
        if (a == 6) {
          stdout.write('\x1B[2J\x1B[0;0H');
          print("\nPASTGA YO'L YO'Q !!!\n");
          break;
        }
        break;
      // EXIT PROGRAMM
      case "exit":
        print("BIZ BILAN VAHT O'TKAZGANINGIZ UCHUN TASHAKKU :)");
        exit(0);
      default:
    }
  }
}
