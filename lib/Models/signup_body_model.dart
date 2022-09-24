class SignUpBody{
  String name;
  String phone;
  String email;
  String password;

  SignUpBody({
    required this.name,
    required this.phone,
    required this.email,
    required this.password
  });
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
     data["username"] = this.name;
    data["email"] = this.email;
    data["password1"] = this.password;
    data["password2"] = this.password;
    return data;
  }
}