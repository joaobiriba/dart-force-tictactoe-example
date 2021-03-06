library shared;

import 'dart:convert';
import 'package:force/force_browser.dart';

part 'bombemotion_client.dart';

const firebaseUrl = 'https://bombemotion.firebaseio.com/';

class User {
  String name;
  int avatar;
  int score = 0;
  int time;

  User(this.name, this.avatar);

  User.fromMap(Map map) {
    name = map['name'];
    avatar = map['avatar'];
    score = map['score'];
    time = map['time'];
  }

  Map toJson() {
    return {
      'name': name,
      'avatar': avatar,
      'score': score,
      'time': time
    };
  }
}

List<User> getUsersFromJson(String jsonUsers) {
  List challengeUsers = JSON.decode(jsonUsers);
  return challengeUsers.map((u) => new User.fromMap(u)).toList();
}

class Messages {
  static const String AVAILABLEUSERS = 'au';

  static const String CHALLENGE = 'cc';

  static const String CHECKMATE = 'cm';

  static const String GAMEOVER = 'go';

  static const String GETSTATUS = 'gs';

  static const String LOGIN = 'li';

  static const String LEADERBOARD = 'lb';

  static const String PENDINGCHALLENGE = 'pc';

  static const String PGN = 'pg';

  static const String STARTCHALLENGE = 'ss';

  static const String STOPCHALLENGE = 'sc';

}
