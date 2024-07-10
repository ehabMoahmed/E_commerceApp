class Addresses {
  Addresses({
    this.id,
    this.name,
    this.details,
    this.phone,
    this.city,});

  Addresses.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    details = json['details'];
    phone = json['phone'];
    city = json['city'];
  }
  String? id;
  String? name;
  String? details;
  String? phone;
  String? city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['details'] = details;
    map['phone'] = phone;
    map['city'] = city;
    return map;
  }

}