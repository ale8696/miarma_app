class RegisterDto {
  RegisterDto({
    required this.nick,
    required this.nombre,
    required this.apellidos,
    required this.email,
    required this.password,
    required this.password2,
    required this.isPrivado,
    required this.fechaDeNacimiento,
  });
  late final String nick;
  late final String nombre;
  late final String apellidos;
  late final String email;
  late final String password;
  late final String password2;
  late final bool isPrivado;
  late final String fechaDeNacimiento;
  
  RegisterDto.fromJson(Map<String, dynamic> json){
    nick = json['nick'];
    nombre = json['nombre'];
    apellidos = json['apellidos'];
    email = json['email'];
    password = json['password'];
    password2 = json['password2'];
    isPrivado = json['isPrivado'];
    fechaDeNacimiento = json['fechaDeNacimiento'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['nick'] = nick;
    _data['nombre'] = nombre;
    _data['apellidos'] = apellidos;
    _data['email'] = email;
    _data['password'] = password;
    _data['password2'] = password2;
    _data['isPrivado'] = isPrivado;
    _data['fechaDeNacimiento'] = fechaDeNacimiento;
    return _data;
  }
}