import 'package:flutter_forms/model/user_data_model.dart';

class UsersList {
  List<UserData>? users;
  UsersList({this.users});

  UsersList.fromJson(Map<String, dynamic> json) {
    users = List<UserData>.from(json['users'].map((u) => UserData.fromJson(u)));
  }

  Map<String, dynamic> toJson() {
    return {
      'users': users!.map((u) => u.toJson()).toList(),
    };
  }
}
