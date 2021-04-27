class UserModel {
  String id;
  String email;
  String image;
  String username;
  String description;
  String role;
  String token;

  UserModel(
      {this.id,
      this.email,
      this.image,
      this.username,
      this.description,
      this.role,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    image = json['image'];
    username = json['username'];
    description = json['description'];
    role = json['role'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['image'] = this.image;
    data['username'] = this.username;
    data['description'] = this.description;
    data['role'] = this.role;
    data['token'] = this.token;
    return data;
  }
}
