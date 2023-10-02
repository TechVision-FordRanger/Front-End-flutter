class AuthDto {
    String email;
    String password;
  
    // Construtor
    AuthDto({
      required this.email,
      required this.password,
    });
  
    // Convert a UserDto object into a Map
    Map<String, dynamic> toJson() {
      return {
        'password': password,
        'email': email,
      };
    }
  
    // Create a UserDto object from a Map
    factory AuthDto.fromMap(Map<String, dynamic> map) {
      return AuthDto(
        password: map['password'] as String,
        email: map['email'] as String,
      );
    }
  }
  