class User {

String? name;
String? phone;
String? email;
String? profileimage;

  User({
    this.name,
    this.phone,
    this.email,
    this.profileimage,
  });


  Map<String ,dynamic> toJson()=> {
    "name": name,
    "phone": phone,
    "email": email,
    "profileimage": profileimage
  };
  

  factory User.fromJson(Map<String, dynamic> json) =>  User(
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    profileimage: json["profileimage"],
  );

  
}
