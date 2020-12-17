import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'https://tennis-chat-app.herokuapp.com/api'
      : 'https://tennis-chat-app.herokuapp.com/api';
  static String socketUrl =
      Platform.isAndroid ? 'https://tennis-chat-app.herokuapp.com' : 'https://tennis-chat-app.herokuapp.com';
}
