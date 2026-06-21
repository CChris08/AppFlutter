/// Modelo de Usuario para FoodLink
/// Basado en los casos de uso C1, C3, C9 del documento S-SDLC
class User {
  final int id;
  final String idEmpleado; // Identificador único del empleado (ej. "EMP-001")
  final String nombre;
  final String rol; // "admin", "cocinero", "trabajador"
  final String turno; // "Matutino", "Vespertino", "Nocturno"
  final bool activo;

  User({
    required this.id,
    required this.idEmpleado,
    required this.nombre,
    required this.rol,
    required this.turno,
    required this.activo,
  });

  // Convierte JSON → Objeto User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      idEmpleado: json['idEmpleado'] as String,
      nombre: json['nombre'] as String,
      rol: json['rol'] as String,
      turno: json['turno'] as String,
      activo: json['activo'] as bool,
    );
  }

  // Convierte Objeto User → JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idEmpleado': idEmpleado,
      'nombre': nombre,
      'rol': rol,
      'turno': turno,
      'activo': activo,
    };
  }
}