class UserModel {
  int? user;
  String? phoneNumber;
  String? location;
  String? profilePic;

  UserModel({this.user, this.phoneNumber, this.location, this.profilePic});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    phoneNumber = json['phone_number'];
    location = json['location'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['phone_number'] = this.phoneNumber;
    data['location'] = this.location;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}
