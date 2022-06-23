/// id : 8
/// name : "Andrzej_Person_Kancelaria_Senatu.jpg"
/// alternativeText : null
/// caption : null
/// width : 3000
/// height : 4500
/// formats : {"thumbnail":{"name":"thumbnail_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":104,"height":156,"size":3.12,"url":"/uploads/thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"},"large":{"name":"large_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":667,"height":1000,"size":75.5,"url":"/uploads/large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"},"medium":{"name":"medium_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":500,"height":750,"size":42.95,"url":"/uploads/medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"},"small":{"name":"small_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":334,"height":500,"size":20.18,"url":"/uploads/small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"}}
/// hash : "Andrzej_Person_Kancelaria_Senatu_6c60ad00fa"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// size : 1253.72
/// url : "/uploads/Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"
/// previewUrl : null
/// provider : "local"
/// provider_metadata : null
/// createdAt : "2022-06-18T07:40:35.405Z"
/// updatedAt : "2022-06-18T07:40:35.405Z"

class UploadimageClass {
  UploadimageClass({
      int? id,
      String? name,
      dynamic alternativeText,
      dynamic caption,
      int? width,
      int? height,
      Formats? formats,
      String? hash,
      String? ext,
      String? mime,
      double? size,
      String? url,
      dynamic previewUrl,
      String? provider,
      dynamic providerMetadata,
      String? createdAt,
      String? updatedAt,}){
    _id = id;
    _name = name;
    _alternativeText = alternativeText;
    _caption = caption;
    _width = width;
    _height = height;
    _formats = formats;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _size = size;
    _url = url;
    _previewUrl = previewUrl;
    _provider = provider;
    _providerMetadata = providerMetadata;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  UploadimageClass.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _alternativeText = json['alternativeText'];
    _caption = json['caption'];
    _width = json['width'];
    _height = json['height'];
    _formats = json['formats'] != null ? Formats.fromJson(json['formats']) : null;
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _size = json['size'];
    _url = json['url'];
    _previewUrl = json['previewUrl'];
    _provider = json['provider'];
    _providerMetadata = json['provider_metadata'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }
  int? _id;
  String? _name;
  dynamic _alternativeText;
  dynamic _caption;
  int? _width;
  int? _height;
  Formats? _formats;
  String? _hash;
  String? _ext;
  String? _mime;
  double? _size;
  String? _url;
  dynamic _previewUrl;
  String? _provider;
  dynamic _providerMetadata;
  String? _createdAt;
  String? _updatedAt;
UploadimageClass copyWith({  int? id,
  String? name,
  dynamic alternativeText,
  dynamic caption,
  int? width,
  int? height,
  Formats? formats,
  String? hash,
  String? ext,
  String? mime,
  double? size,
  String? url,
  dynamic previewUrl,
  String? provider,
  dynamic providerMetadata,
  String? createdAt,
  String? updatedAt,
}) => UploadimageClass(  id: id ?? _id,
  name: name ?? _name,
  alternativeText: alternativeText ?? _alternativeText,
  caption: caption ?? _caption,
  width: width ?? _width,
  height: height ?? _height,
  formats: formats ?? _formats,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  size: size ?? _size,
  url: url ?? _url,
  previewUrl: previewUrl ?? _previewUrl,
  provider: provider ?? _provider,
  providerMetadata: providerMetadata ?? _providerMetadata,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
  String? get name => _name;
  dynamic get alternativeText => _alternativeText;
  dynamic get caption => _caption;
  int? get width => _width;
  int? get height => _height;
  Formats? get formats => _formats;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  double? get size => _size;
  String? get url => _url;
  dynamic get previewUrl => _previewUrl;
  String? get provider => _provider;
  dynamic get providerMetadata => _providerMetadata;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['alternativeText'] = _alternativeText;
    map['caption'] = _caption;
    map['width'] = _width;
    map['height'] = _height;
    if (_formats != null) {
      map['formats'] = _formats?.toJson();
    }
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['size'] = _size;
    map['url'] = _url;
    map['previewUrl'] = _previewUrl;
    map['provider'] = _provider;
    map['provider_metadata'] = _providerMetadata;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    return map;
  }

}

/// thumbnail : {"name":"thumbnail_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":104,"height":156,"size":3.12,"url":"/uploads/thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"}
/// large : {"name":"large_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":667,"height":1000,"size":75.5,"url":"/uploads/large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"}
/// medium : {"name":"medium_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":500,"height":750,"size":42.95,"url":"/uploads/medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"}
/// small : {"name":"small_Andrzej_Person_Kancelaria_Senatu.jpg","hash":"small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa","ext":".jpg","mime":"image/jpeg","path":null,"width":334,"height":500,"size":20.18,"url":"/uploads/small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"}

class Formats {
  Formats({
      Thumbnail? thumbnail,
      Large? large,
      Medium? medium,
      Small? small,}){
    _thumbnail = thumbnail;
    _large = large;
    _medium = medium;
    _small = small;
}

  Formats.fromJson(dynamic json) {
    _thumbnail = json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null;
    _large = json['large'] != null ? Large.fromJson(json['large']) : null;
    _medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    _small = json['small'] != null ? Small.fromJson(json['small']) : null;
  }
  Thumbnail? _thumbnail;
  Large? _large;
  Medium? _medium;
  Small? _small;
Formats copyWith({  Thumbnail? thumbnail,
  Large? large,
  Medium? medium,
  Small? small,
}) => Formats(  thumbnail: thumbnail ?? _thumbnail,
  large: large ?? _large,
  medium: medium ?? _medium,
  small: small ?? _small,
);
  Thumbnail? get thumbnail => _thumbnail;
  Large? get large => _large;
  Medium? get medium => _medium;
  Small? get small => _small;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_thumbnail != null) {
      map['thumbnail'] = _thumbnail?.toJson();
    }
    if (_large != null) {
      map['large'] = _large?.toJson();
    }
    if (_medium != null) {
      map['medium'] = _medium?.toJson();
    }
    if (_small != null) {
      map['small'] = _small?.toJson();
    }
    return map;
  }

}

/// name : "small_Andrzej_Person_Kancelaria_Senatu.jpg"
/// hash : "small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// path : null
/// width : 334
/// height : 500
/// size : 20.18
/// url : "/uploads/small_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"

class Small {
  Small({
      String? name,
      String? hash,
      String? ext,
      String? mime,
      dynamic path,
      int? width,
      int? height,
      double? size,
      String? url,}){
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _path = path;
    _width = width;
    _height = height;
    _size = size;
    _url = url;
}

  Small.fromJson(dynamic json) {
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _path = json['path'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _url = json['url'];
  }
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  dynamic _path;
  int? _width;
  int? _height;
  double? _size;
  String? _url;
Small copyWith({  String? name,
  String? hash,
  String? ext,
  String? mime,
  dynamic path,
  int? width,
  int? height,
  double? size,
  String? url,
}) => Small(  name: name ?? _name,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  path: path ?? _path,
  width: width ?? _width,
  height: height ?? _height,
  size: size ?? _size,
  url: url ?? _url,
);
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  dynamic get path => _path;
  int? get width => _width;
  int? get height => _height;
  double? get size => _size;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['path'] = _path;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['url'] = _url;
    return map;
  }

}

/// name : "medium_Andrzej_Person_Kancelaria_Senatu.jpg"
/// hash : "medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// path : null
/// width : 500
/// height : 750
/// size : 42.95
/// url : "/uploads/medium_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"

class Medium {
  Medium({
      String? name,
      String? hash,
      String? ext,
      String? mime,
      dynamic path,
      int? width,
      int? height,
      double? size,
      String? url,}){
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _path = path;
    _width = width;
    _height = height;
    _size = size;
    _url = url;
}

  Medium.fromJson(dynamic json) {
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _path = json['path'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _url = json['url'];
  }
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  dynamic _path;
  int? _width;
  int? _height;
  double? _size;
  String? _url;
Medium copyWith({  String? name,
  String? hash,
  String? ext,
  String? mime,
  dynamic path,
  int? width,
  int? height,
  double? size,
  String? url,
}) => Medium(  name: name ?? _name,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  path: path ?? _path,
  width: width ?? _width,
  height: height ?? _height,
  size: size ?? _size,
  url: url ?? _url,
);
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  dynamic get path => _path;
  int? get width => _width;
  int? get height => _height;
  double? get size => _size;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['path'] = _path;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['url'] = _url;
    return map;
  }

}

/// name : "large_Andrzej_Person_Kancelaria_Senatu.jpg"
/// hash : "large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// path : null
/// width : 667
/// height : 1000
/// size : 75.5
/// url : "/uploads/large_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"

class Large {
  Large({
      String? name,
      String? hash,
      String? ext,
      String? mime,
      dynamic path,
      int? width,
      int? height,
      double? size,
      String? url,}){
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _path = path;
    _width = width;
    _height = height;
    _size = size;
    _url = url;
}

  Large.fromJson(dynamic json) {
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _path = json['path'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _url = json['url'];
  }
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  dynamic _path;
  int? _width;
  int? _height;
  double? _size;
  String? _url;
Large copyWith({  String? name,
  String? hash,
  String? ext,
  String? mime,
  dynamic path,
  int? width,
  int? height,
  double? size,
  String? url,
}) => Large(  name: name ?? _name,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  path: path ?? _path,
  width: width ?? _width,
  height: height ?? _height,
  size: size ?? _size,
  url: url ?? _url,
);
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  dynamic get path => _path;
  int? get width => _width;
  int? get height => _height;
  double? get size => _size;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['path'] = _path;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['url'] = _url;
    return map;
  }

}

/// name : "thumbnail_Andrzej_Person_Kancelaria_Senatu.jpg"
/// hash : "thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// path : null
/// width : 104
/// height : 156
/// size : 3.12
/// url : "/uploads/thumbnail_Andrzej_Person_Kancelaria_Senatu_6c60ad00fa.jpg"

class Thumbnail {
  Thumbnail({
      String? name,
      String? hash,
      String? ext,
      String? mime,
      dynamic path,
      int? width,
      int? height,
      double? size,
      String? url,}){
    _name = name;
    _hash = hash;
    _ext = ext;
    _mime = mime;
    _path = path;
    _width = width;
    _height = height;
    _size = size;
    _url = url;
}

  Thumbnail.fromJson(dynamic json) {
    _name = json['name'];
    _hash = json['hash'];
    _ext = json['ext'];
    _mime = json['mime'];
    _path = json['path'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _url = json['url'];
  }
  String? _name;
  String? _hash;
  String? _ext;
  String? _mime;
  dynamic _path;
  int? _width;
  int? _height;
  double? _size;
  String? _url;
Thumbnail copyWith({  String? name,
  String? hash,
  String? ext,
  String? mime,
  dynamic path,
  int? width,
  int? height,
  double? size,
  String? url,
}) => Thumbnail(  name: name ?? _name,
  hash: hash ?? _hash,
  ext: ext ?? _ext,
  mime: mime ?? _mime,
  path: path ?? _path,
  width: width ?? _width,
  height: height ?? _height,
  size: size ?? _size,
  url: url ?? _url,
);
  String? get name => _name;
  String? get hash => _hash;
  String? get ext => _ext;
  String? get mime => _mime;
  dynamic get path => _path;
  int? get width => _width;
  int? get height => _height;
  double? get size => _size;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['hash'] = _hash;
    map['ext'] = _ext;
    map['mime'] = _mime;
    map['path'] = _path;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['url'] = _url;
    return map;
  }

}