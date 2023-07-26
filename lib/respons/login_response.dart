class LoginResponse {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String token;

  LoginResponse({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      gender: json['lastName'],
      image: json['image'],
      token: json['token'],
    );
  }

  @override
  String toString() {
    return 'LoginResponse('
        'id: $id, '
        'username: $username, '
        'email: $email, '
        'firstName: $firstName, '
        'lastName: $lastName, '
        'gender: $gender, '
        'image: $image, '
        'token: $token'
        ')';
  }

}
