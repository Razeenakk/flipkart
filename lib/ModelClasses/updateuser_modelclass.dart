/// id : 1
/// username : "jackSparrow"
/// email : "jacksparrow@gmail.com"
/// provider : "local"
/// confirmed : true
/// blocked : false
/// createdAt : "2022-06-17T04:18:32.223Z"
/// updatedAt : "2022-06-18T07:43:24.317Z"
/// role : {"id":1,"name":"Authenticated","description":"Default role given to authenticated user.","type":"authenticated","createdAt":"2022-06-16T10:39:27.182Z","updatedAt":"2022-06-17T04:21:51.289Z"}

class UpdateuserModelclass {
  UpdateuserModelclass({
      int? id,
      String? username,
      String? email,
      String? provider,
      bool? confirmed,
      bool? blocked,
      String? createdAt,
      String? updatedAt,
      Role? role,}){
    _id = id;
    _username = username;
    _email = email;
    _provider = provider;
    _confirmed = confirmed;
    _blocked = blocked;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _role = role;
}

  UpdateuserModelclass.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _provider = json['provider'];
    _confirmed = json['confirmed'];
    _blocked = json['blocked'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _role = json['role'] != null ? Role.fromJson(json['role']) : null;
  }
  int? _id;
  String? _username;
  String? _email;
  String? _provider;
  bool? _confirmed;
  bool? _blocked;
  String? _createdAt;
  String? _updatedAt;
  Role? _role;
UpdateuserModelclass copyWith({  int? id,
  String? username,
  String? email,
  String? provider,
  bool? confirmed,
  bool? blocked,
  String? createdAt,
  String? updatedAt,
  Role? role,
}) => UpdateuserModelclass(  id: id ?? _id,
  username: username ?? _username,
  email: email ?? _email,
  provider: provider ?? _provider,
  confirmed: confirmed ?? _confirmed,
  blocked: blocked ?? _blocked,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  role: role ?? _role,
);
  int? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get provider => _provider;
  bool? get confirmed => _confirmed;
  bool? get blocked => _blocked;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Role? get role => _role;

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
    if (_role != null) {
      map['role'] = _role?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "Authenticated"
/// description : "Default role given to authenticated user."
/// type : "authenticated"
/// createdAt : "2022-06-16T10:39:27.182Z"
/// updatedAt : "2022-06-17T04:21:51.289Z"

class Role {
  Role({
      int? id,
      String? name,
      String? description,
      String? type,
      String? createdAt,
      String? updatedAt,}){
    _id = id;
    _name = name;
    _description = description;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Role.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _type = json['type'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  int? _id;
  String? _name;
  String? _description;
  String? _type;
  String? _createdAt;
  String? _updatedAt;
Role copyWith({  int? id,
  String? name,
  String? description,
  String? type,
  String? createdAt,
  String? updatedAt,
}) => Role(  id: id ?? _id,
  name: name ?? _name,
  description: description ?? _description,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  String? get description => _description;
  String? get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['description'] = _description;
    map['type'] = _type;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}