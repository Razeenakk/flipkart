/// jwt : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNjU1NTM4NjQ1LCJleHAiOjE2NTgxMzA2NDV9.ZMNcCzb0nrdP3pi9wk-Ti7c7T89wx5KfJyO8NTg_cj4"
/// user : {"id":3,"username":"sky","email":"sky@gmail.com","provider":"local","confirmed":true,"blocked":false,"createdAt":"2022-06-18T07:50:45.228Z","updatedAt":"2022-06-18T07:50:45.228Z"}

class SignupModelclass {
  SignupModelclass({
      String? jwt, 
      User? user,}){
    _jwt = jwt;
    _user = user;
}

  SignupModelclass.fromJson(dynamic json) {
    _jwt = json['jwt'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _jwt;
  User? _user;
SignupModelclass copyWith({  String? jwt,
  User? user,
}) => SignupModelclass(  jwt: jwt ?? _jwt,
  user: user ?? _user,
);
  String? get jwt => _jwt;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jwt'] = _jwt;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 3
/// username : "sky"
/// email : "sky@gmail.com"
/// provider : "local"
/// confirmed : true
/// blocked : false
/// createdAt : "2022-06-18T07:50:45.228Z"
/// updatedAt : "2022-06-18T07:50:45.228Z"

class User {
  User({
      int? id, 
      String? username, 
      String? email, 
      String? provider, 
      bool? confirmed, 
      bool? blocked, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _username = username;
    _email = email;
    _provider = provider;
    _confirmed = confirmed;
    _blocked = blocked;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _provider = json['provider'];
    _confirmed = json['confirmed'];
    _blocked = json['blocked'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  int? _id;
  String? _username;
  String? _email;
  String? _provider;
  bool? _confirmed;
  bool? _blocked;
  String? _createdAt;
  String? _updatedAt;
User copyWith({  int? id,
  String? username,
  String? email,
  String? provider,
  bool? confirmed,
  bool? blocked,
  String? createdAt,
  String? updatedAt,
}) => User(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  provider: provider ?? _provider,
  confirmed: confirmed ?? _confirmed,
  blocked: blocked ?? _blocked,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get provider => _provider;
  bool? get confirmed => _confirmed;
  bool? get blocked => _blocked;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['provider'] = _provider;
    map['confirmed'] = _confirmed;
    map['blocked'] = _blocked;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}