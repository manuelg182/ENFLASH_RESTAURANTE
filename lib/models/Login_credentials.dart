class Login_credentials {
  final String id;
  final String email;
  final String password;

  //constructor
  Login_credentials({
    required this.id,
    required this.email,
    required this.password,
  });

  factory Login_credentials.fromJson(Map<String, dynamic> json) {
    return Login_credentials(
      id: json['_id'],
      email: json['email'],
      password: json['password'],
    );
  }
}
