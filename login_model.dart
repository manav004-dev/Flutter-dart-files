class LoginModel {
  final dynamic responseCode;
  final String? message;

  const LoginModel({
    this.responseCode,
    this.message,
  });

  factory LoginModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return LoginModel(
      responseCode:
      json['responseCode'] ??
          json['response_code'] ??
          json['status'],
      message: json['message']?.toString(),
    );
  }
}