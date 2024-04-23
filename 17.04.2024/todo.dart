import 'dart:io';
import 'dart:async';
import 'dart:isolate';

void main() {
  final user = UserPrompt();
  user.startApp();
}

// abstract class Task
abstract class Task {
  final String id;
  String title;
  DateTime date;
  bool isComplete;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.isComplete,
  });

  void display();

  Map<String, dynamic> toJson();
}

// class OneTimeTask
class OneTimeTask extends Task {
  OneTimeTask({
    required super.id,
    required super.title,
    required super.date,
    required super.isComplete,
  });

  @override
  void display() {
    print("""Vazifa:
id: ${super.id}
nomi: ${super.title}
vaqti: ${super.date}
bajarilganmi: ${super.isComplete ? "Ha" : "Yo'q"}   
""");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'title': super.title,
      'date': super.date.toIso8601String(),
      'isComplete': super.isComplete,
    };
  }

  factory OneTimeTask.fromJson(Map<String, dynamic> json) {
    return OneTimeTask(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      isComplete: json['isComplete'] as bool,
    );
  }
}

// RecurringTask class
class RecurringTask extends Task {
  RecurringTask({
    required super.id,
    required super.title,
    required super.date,
    required super.isComplete,
  });

  @override
  void display() {
    print("""Vazifa:
id: ${super.id}
nomi: ${super.title}
vaqti: ${super.date}
bajarilganmi: ${super.isComplete ? "Ha" : "Yo'q"}   
""");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': super.id,
      'title': super.title,
      'date': super.date.toIso8601String(),
      'isComplete': super.isComplete,
    };
  }

  factory RecurringTask.fromJson(Map<String, dynamic> json) {
    return RecurringTask(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      isComplete: json['isComplete'] as bool,
    );
  }
}

// TaskManager class
// Umumiy Tasklarni boshqarish klasi
class TaskManager {
  var taskToJSONFile = TaskStorageManager();

  List<Task> tasks = [];

  void showAllTask() {
    if (tasks.isNotEmpty) {
      tasks.forEach((task) => task.display());
      // taskToJSONFile.readTasksFromFile('tasks.json');
    } else {
      print("Hali vazifa qo'shilmagan.🤷‍♂️");
    }
  }

  void showCompletedTasks() {
    if (tasks.where((task) => task.isComplete == true).isNotEmpty) {
      tasks.forEach((task) {
        if (task.isComplete) {
          task.display();
        }
      });
    } else {
      print("Hali biror vazifa bajarmagansiz.");
    }
  }

  void showNotCompletedTasks() {
    if (tasks.where((task) => task.isComplete == false).isNotEmpty) {
      tasks.forEach((task) {
        if (!task.isComplete) {
          task.display();
        }
      });
    } else {
      print(
          "Bajarilmagan vazifa topilmadi. Hammasini bajarib bo'lgansiz chog'i.");
    }
  }

  void addTask(Task task) {
    tasks.add(task);
    // taskToJSONFile.writeTaskIntoFile('tasks.json', task.toJson().toString());
  }

  void editTask(String id, String newTitle, DateTime newDate) {
    tasks.forEach((task) {
      if (task.id == id) {
        task.title = newTitle;
        task.date = newDate;
        return;
      }
    });
  }

  void deleteTask(String id) {
    tasks.removeWhere((task) => task.id == id);
  }

  void markAsComplete(String id) {
    // tasks.forEach((task) {
    //   if (task.id == id) {
    //     task.markAsComplete();
    //   }
    // });
  }
}

// TaskStorageManager class
// Malumotlarni Json filega saqlash va o'qish imkoni
class TaskStorageManager {
  void writeTaskIntoFile(String fileName, String taskDetails) {
    // Create a File object
    File file = File(fileName);

    // Open the file for writing mode
    RandomAccessFile raf = file.openSync(mode: FileMode.write);

    // Write the content to the file
    raf.writeStringSync(taskDetails);

    // Close the file
    raf.closeSync();

    print('Vazifa $fileName fayliga yozildi.');
  }

  void readTasksFromFile(String fileName) {
    // Create a File object
    File file = File(fileName);

    if (!file.existsSync()) {
      print('Bunday fayl topilmadi.');
      return;
    }

    // Read the content of the file
    String content = file.readAsStringSync();

    print('Fayldagi vazifalar:');
    print(content);
  }
}

// TaskReminder class
// tasklarni eslatib turuvchi klass
class TaskReminder {
  Future<void> setReminder(Task task, int second) async {
    ReceivePort receivePort = ReceivePort();
    Isolate isolate =
        await Isolate.spawn(_setTime, [receivePort.sendPort, second, task]);
    receivePort.listen((message) {
      print("Vazifani bajarish vaqti keldi: ${message}");
      isolate.kill(priority: Isolate.immediate);
      receivePort.close();
    });
  }

  void _setTime(List<dynamic> message) async {
    SendPort sendPort = message[0];
    int seconds = message[1];
    Task task = message[2];

    await Future.delayed(Duration(seconds: seconds));
    sendPort.send(task);
  }
}

// UserPrompt class
class UserPrompt {
  void startApp() async {
    var taskManager = TaskManager();
    print("Assalomu alaykum. Dasturimizga hush kelibsiz.");
    while (true) {
      final option = getUserInput("""Bo'limni tanlang:
1. Barcha vazifalarni ko'rsatish.
2. Bajarilgan vazifalarni ko'rsatish
3. Bajarilmagan vazifalarni ko'rsatish
4. Vazifa qo'shish
5. Vazifani o'zgartirish
6. Vazifani o'chirish
7. Vazifaga eslatma qo'shish
8. Vazifani bajarilgan deb belgilash
9. Dasturdan chiqish
""");
      switch (option) {
        case '1':
          // Show all tasks
          taskManager.showAllTask();
          break;
        case '2':
          // Show completed tasks
          taskManager.showCompletedTasks();
          break;
        case '3':
          // Show not completed tasks
          taskManager.showNotCompletedTasks();
          break;
        case '4':
          // Add task
          _addTask(taskManager);
          break;
        case '5':
          // Edit task
          _editTask(taskManager);
          break;
        case '6':
          // Delete task
          _deleteTask(taskManager);
          break;
        case '7':
          // Set reminder

          break;
        case '8':
          _markAsComplete(taskManager);
          break;
        case '9':
          // Exit app
          exit(0);
        default:
          print("Bunday bo'lim topilmadi.");
          break;
      }
    }
  }

  void _addTask(TaskManager taskManager) {
    final option = getUserInput("""Qanday vazifa qo'shmoqchisiz? 
1. Bir martalik
2. Takrorlanuvchi   
""");
    switch (option) {
      case '1':
        // One time task
        try {
          final title = getUserInput("Vazifa nomini kiriting: ");
          final date = DateTime.parse(
              getUserInput("yyyy-mm-dd formatida sana kiriting: "));
          taskManager.addTask(
            OneTimeTask(
                id: DateTime.now().hashCode.toString(),
                title: title,
                date: date,
                isComplete: false),
          );
          print("Vazifa qo'shildi.✅");
        } on FormatException {
          print("Noto'g'ri formatda kiritildi.");
        } catch (e) {
          print(e);
        }
        break;
      case '2':
        // Recurring task
        try {
          final howMany =
              int.parse(getUserInput("Vazifa necha marta takrorlansin: "));
          if (howMany < 1) {
            throw Exception("1dan kam takrorlanish mumkin emas.");
          }
          final title = getUserInput("Vazifa nomini kiriting: ");
          final date = DateTime.parse(
              getUserInput("yyyy-mm-dd formatida sana kiriting: "));
          for (int i = 0; i < howMany; i++) {
            taskManager.addTask(
              RecurringTask(
                id: DateTime.now().hashCode.toString(),
                title: title,
                date: DateTime(date.year, date.month, date.day + i),
                isComplete: false,
              ),
            );
          }
          print("Vazifa${howMany > 1 ? 'lar' : ''} qo'shildi.✅");
        } on FormatException {
          print("Noto'g'ri formatda kiritildi.");
        } catch (e) {
          print(e);
        }
        break;
      default:
        print("Mavjud bo'lmagan tanlov.");
        return;
    }
  }

  void _editTask(TaskManager taskManager) {
    try {
      final id = getUserInput("Vazifa IDsini kiriting: ");
      if (taskManager.tasks.any((task) => task.id == id)) {
        final newTitle = getUserInput("Yangi nom kiriting: ");
        final newDate = DateTime.parse(
            getUserInput("Yangi sanani (yyyy-mm-dd) kiriting: "));
        taskManager.editTask(id, newTitle, newDate);
        print("Vazifa tahrirlandi.✅");
      } else {
        print("Bunday id ga ega vazifa topilmadi.🤷‍♂️");
      }
    } on FormatException {
      print("Noto'g'ri formatda kiritildi.");
    } catch (e) {
      print(e);
    }
  }

  void _deleteTask(TaskManager taskManager) {
    final id = getUserInput("Vazifa IDsini kiriting: ");
    if (taskManager.tasks.any((task) => task.id == id)) {
      taskManager.deleteTask(id);
      print("Vazifa o'chirib yuborildi.🗑");
    } else {
      print("Bunday id ga ega vazifa topilmadi.🤷‍♂️");
    }
  }

  void _markAsComplete(TaskManager taskManager) {
    final id = getUserInput("Vazifa IDsini kiriting: ");
    if (taskManager.tasks.any((task) => task.id == id)) {
      taskManager.markAsComplete(id);
      print("Vazifani yakunlangan deb belgilandi.");
    } else {
      print("Bunday IDga ega vazifa topilmadi.");
    }
  }
}

String getUserInput(String message) {
  print(message);
  String? userInput = stdin.readLineSync();
  while (userInput == null || userInput.trim().isEmpty) {
    stdout.write(message);
    userInput = stdin.readLineSync();
  }
  return userInput;
}
