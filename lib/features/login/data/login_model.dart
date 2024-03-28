class LoginModel {
  String? message;
  String? accessToken;

  LoginModel({this.message, this.accessToken});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['accessToken'] = this.accessToken;
    return data;
  }
}