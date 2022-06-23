/// data : [{"id":1,"attributes":{"name":"Nabati","description":"Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural.","price":10,"createdAt":"2022-06-17T04:20:44.401Z","updatedAt":"2022-06-17T04:20:44.401Z","image":{"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}}}]
/// meta : {"pagination":{"start":0,"limit":1,"total":7}}

class ProductsModelclass {
  ProductsModelclass({
    List<Data>? data,
    Meta? meta,
  }) {
    _data = data;
    _meta = meta;
  }

  ProductsModelclass.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  List<Data>? _data;
  Meta? _meta;

  ProductsModelclass copyWith({
    List<Data>? data,
    Meta? meta,
  }) =>
      ProductsModelclass(
        data: data ?? _data,
        meta: meta ?? _meta,
      );

  List<Data>? get data => _data;

  Meta? get meta => _meta;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_meta != null) {
      map['meta'] = _meta?.toJson();
    }
    return map;
  }
}

/// pagination : {"start":0,"limit":1,"total":7}

class Meta {
  Meta({
    Pagination? pagination,
  }) {
    _pagination = pagination;
  }

  Meta.fromJson(dynamic json) {
    _pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Pagination? _pagination;

  Meta copyWith({
    Pagination? pagination,
  }) =>
      Meta(
        pagination: pagination ?? _pagination,
      );

  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }
}

/// start : 0
/// limit : 1
/// total : 7

class Pagination {
  Pagination({
    int? start,
    int? limit,
    int? total,
  }) {
    _start = start;
    _limit = limit;
    _total = total;
  }

  Pagination.fromJson(dynamic json) {
    _start = json['start'];
    _limit = json['limit'];
    _total = json['total'];
  }

  int? _start;
  int? _limit;
  int? _total;

  Pagination copyWith({
    int? start,
    int? limit,
    int? total,
  }) =>
      Pagination(
        start: start ?? _start,
        limit: limit ?? _limit,
        total: total ?? _total,
      );

  int? get start => _start;

  int? get limit => _limit;

  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['start'] = _start;
    map['limit'] = _limit;
    map['total'] = _total;
    return map;
  }
}

/// id : 1
/// attributes : {"name":"Nabati","description":"Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural.","price":10,"createdAt":"2022-06-17T04:20:44.401Z","updatedAt":"2022-06-17T04:20:44.401Z","image":{"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}}

class Data {
  Data({
    int? id,
    Attributes? attributes,
  }) {
    _id = id;
    _attributes = attributes;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _attributes = json['attributes'] != null
        ? Attributes.fromJson(json['attributes'])
        : null;
  }

  int? _id;
  Attributes? _attributes;

  Data copyWith({
    int? id,
    Attributes? attributes,
  }) =>
      Data(
        id: id ?? _id,
        attributes: attributes ?? _attributes,
      );

  int? get id => _id;

  Attributes? get attributes => _attributes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    return map;
  }
}

/// name : "Nabati"
/// description : "Canadian Plant-based Food Technology Company. Certified Gluten-free; Soy-free, Certified Kosher; Certified Vegan, Certified Non-GMO, All natural."
/// price : 10
/// createdAt : "2022-06-17T04:20:44.401Z"
/// updatedAt : "2022-06-17T04:20:44.401Z"
/// image : {"data":{"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}}

class Attributes {
  Attributes({
    String? name,
    String? description,
    int? price,
    String? createdAt,
    String? updatedAt,
    Image? image,
  }) {
    _name = name;
    _description = description;
    _price = price;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _image = image;
  }

  Attributes.fromJson(dynamic json) {
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }

  String? _name;
  String? _description;
  int? _price;
  String? _createdAt;
  String? _updatedAt;
  Image? _image;

  Attributes copyWith({
    String? name,
    String? description,
    int? price,
    String? createdAt,
    String? updatedAt,
    Image? image,
  }) =>
      Attributes(
        name: name ?? _name,
        description: description ?? _description,
        price: price ?? _price,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        image: image ?? _image,
      );

  String? get name => _name;

  String? get description => _description;

  int? get price => _price;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  Image? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['description'] = _description;
    map['price'] = _price;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }
}

/// data : {"id":2,"attributes":{"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}}

class Image {
  Image({
    DataImg? data,
  }) {
    _data = data;
  }

  Image.fromJson(dynamic json) {
    _data = json['data'] != null ? DataImg.fromJson(json['data']) : null;
  }

  DataImg? _data;

  Image copyWith({
    DataImg? data,
  }) =>
      Image(
        data: data ?? _data,
      );

  DataImg? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// id : 2
/// attributes : {"name":"th (1).jpg","alternativeText":"th (1).jpg","caption":"th (1).jpg","width":420,"height":225,"formats":{"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}},"hash":"th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","size":19.52,"url":"/uploads/th_1_2c91f51fc8.jpg","previewUrl":null,"provider":"local","provider_metadata":null,"createdAt":"2022-06-17T04:19:48.023Z","updatedAt":"2022-06-17T04:19:48.023Z"}

class DataImg {
  DataImg({
    int? id,
    AttributesImg? attributes,
  }) {
    _id = id;
    _attributes = attributes;
  }

  DataImg.fromJson(dynamic json) {
    _id = json['id'];
    _attributes = json['attributes'] != null
        ? AttributesImg.fromJson(json['attributes'])
        : null;
  }

  int? _id;
  AttributesImg? _attributes;

  DataImg copyWith({
    int? id,
    AttributesImg? attributes,
  }) =>
      DataImg(
        id: id ?? _id,
        attributes: attributes ?? _attributes,
      );

  int? get id => _id;

  AttributesImg? get attributes => _attributes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_attributes != null) {
      map['attributes'] = _attributes?.toJson();
    }
    return map;
  }
}

/// name : "th (1).jpg"
/// alternativeText : "th (1).jpg"
/// caption : "th (1).jpg"
/// width : 420
/// height : 225
/// formats : {"thumbnail":{"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}}
/// hash : "th_1_2c91f51fc8"
/// ext : ".jpg"
/// mime : "image/jpeg"
/// size : 19.52
/// url : "/uploads/th_1_2c91f51fc8.jpg"
/// previewUrl : null
/// provider : "local"
/// provider_metadata : null
/// createdAt : "2022-06-17T04:19:48.023Z"
/// updatedAt : "2022-06-17T04:19:48.023Z"

class AttributesImg {
  AttributesImg({
    String? name,
    String? alternativeText,
    String? caption,
    int? width,
    int? height,
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
  }) {
    _name = name;
    _alternativeText = alternativeText;
    _caption = caption;
    _width = width;
    _height = height;
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

  AttributesImg.fromJson(dynamic json) {
    _name = json['name'];
    _alternativeText = json['alternativeText'];
    _caption = json['caption'];
    _width = json['width'];
    _height = json['height'];
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

  String? _name;
  String? _alternativeText;
  String? _caption;
  int? _width;
  int? _height;

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

  AttributesImg copyWith({
    String? name,
    String? alternativeText,
    String? caption,
    int? width,
    int? height,
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
  }) =>
      AttributesImg(
        name: name ?? _name,
        alternativeText: alternativeText ?? _alternativeText,
        caption: caption ?? _caption,
        width: width ?? _width,
        height: height ?? _height,
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

  String? get name => _name;

  String? get alternativeText => _alternativeText;

  String? get caption => _caption;

  int? get width => _width;

  int? get height => _height;

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
    map['name'] = _name;
    map['alternativeText'] = _alternativeText;
    map['caption'] = _caption;
    map['width'] = _width;
    map['height'] = _height;

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

/// thumbnail : {"name":"thumbnail_th (1).jpg","hash":"thumbnail_th_1_2c91f51fc8","ext":".jpg","mime":"image/jpeg","path":null,"width":245,"height":131,"size":8.66,"url":"/uploads/thumbnail_th_1_2c91f51fc8.jpg"}
