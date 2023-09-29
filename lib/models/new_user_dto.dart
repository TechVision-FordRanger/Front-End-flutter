class NewUserDto {
  String firstName;
  String email;
  String? celphone;
  String birthDate;

  // Construtor
  NewUserDto({
    required this.firstName,
    required this.email,
    this.celphone,
    required this.birthDate,
  });

  // Convert a UserDto object into a Map
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'email': email,
      'celphone': celphone,
      'birthDate': birthDate,
    };
  }

  // Create a UserDto object from a Map
  factory NewUserDto.fromMap(Map<String, dynamic> map) {
    return NewUserDto(
      firstName: map['firstName'] as String,
      email: map['email'] as String,
      celphone: map['celphone'] as String?,
      birthDate: map['birthDate'] as String,
    );
  }
}
