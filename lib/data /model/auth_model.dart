class Auth {
  final String email;
  final String password;

  const Auth({
    this.email = '',
    this.password = '',
  });

  Auth copyWith({
    String? email,
    String? password,
  }) =>
      Auth(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
        email: json['email'] as String,
        password: json['password'] as String,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
