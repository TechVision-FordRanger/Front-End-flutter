class UserDto {
  int?
      id; // Este campo é a chave primária, mas não é marcado como NOT NULL na definição, então estamos tratando como opcional aqui
  String? uuid;
  String firstName;
  String email;
  String? celphone;
  int? idRangerModel;
  String? renavam;
  String? rangerColor;
  String password;
  String? rangerNickname;
  String? rangerPlate;
  String birthDate;

  // Construtor
  UserDto({
    this.id,
    this.uuid,
    required this.firstName,
    required this.email,
    this.celphone,
    this.idRangerModel,
    this.renavam,
    this.rangerColor,
    required this.password,
    this.rangerNickname,
    this.rangerPlate,
    required this.birthDate,
  });

  // Convert a UserDto object into a Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uuid': uuid,
      'firstName': firstName,
      'email': email,
      'celphone': celphone,
      'idRangerModel': idRangerModel,
      'renavam': renavam,
      'rangerColor': rangerColor,
      'password': password,
      'rangerNickname': rangerNickname,
      'rangerPlate': rangerPlate,
      'birthDate': birthDate,
    };
  }

  // Create a UserDto object from a Map
  factory UserDto.fromMap(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'] as int?,
      uuid: map['uuid'] as String?,
      firstName: map['firstName'] as String,
      email: map['email'] as String,
      celphone: map['celphone'] as String?,
      idRangerModel: map['idRangerModel'] as int?,
      renavam: map['renavam'] as String?,
      rangerColor: map['rangerColor'] as String?,
      password: map['password'] as String,
      rangerNickname: map['rangerNickname'] as String?,
      rangerPlate: map['rangerPlate'] as String?,
      birthDate: map['birthDate'] as String,
    );
  }
}
