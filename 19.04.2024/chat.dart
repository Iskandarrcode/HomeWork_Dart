import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) async {
  List<Message> messages = [];
  File file = File("database/messages.json");
  bool fileExists = await file.exists();
  if (!fileExists) {
    await file.create(recursive: true);
  }

  String fileData = await file.readAsString();
  if (fileData.isNotEmpty) {
    List<dynamic> data = jsonDecode(fileData);
    List<Map<String, dynamic>> mapList = data.cast<Map<String, dynamic>>();
    messages = mapList.map((message) => Message.fromMap(message)).toList();
  }

    // input user name
  print("Username kiriting:");
  String username = stdin.readLineSync()!;

    // input message
  print("Xabar kiriting:");
  Stream<String> userInput =
      stdin.transform(utf8.decoder).transform(LineSplitter());

  userInput.listen((message) async {
    Message newMessage = Message(text: message, username: username);
    messages.add(newMessage);

    List<Map<String, dynamic>> mapMessages =
        messages.map((message) => message.toMap()).toList();

    await file.writeAsString(jsonEncode(mapMessages));
  });

  file.watch().listen((event) async {
    String fileData = await file.readAsString();
    if (fileData.isNotEmpty) {
      List<dynamic> data = jsonDecode(fileData);
      List<Map<String, dynamic>> mapList = data.cast<Map<String, dynamic>>();
      messages = mapList.map((message) => Message.fromMap(message)).toList();
    }
    if (messages.last.username != username) {
      print(messages.last.text);
    }
  });
}

// class Message
class Message {
  String text;
  String username;

  Message({
    required this.text,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      "text": text,
      "username": username,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      text: map['text'],
      username: map['username'],
    );
  }


}
