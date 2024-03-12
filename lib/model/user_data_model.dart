class UserData {
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  String? password;

  UserData(
      {String? firstName,
      String? lastName,
      String? gender,
      String? email,
      String? password});

  UserData.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['gender'] = gender;
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
