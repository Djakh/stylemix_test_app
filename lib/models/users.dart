class User {
  int? id;
  String? fullName;
  String? phone;

  User({
    this.id,
    this.fullName,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        fullName: json["fullname"],
        phone: json["phone"],
      );

  Map<String, dynamic> get toJson => {"id": id, "phone": phone, "fullname": fullName};
}
