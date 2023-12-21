class Persona {
  String nombre;
  String apellido;
  int? edad;

  // Constructor por nombre para asignar nombres y apellidos
  Persona(this.nombre, this.apellido);

  // Constructor factory para asignar la edad
  factory Persona.conEdad(String nombre, String apellido, int edad) {
    Persona persona = Persona(nombre, apellido);
    persona.edad = edad;
    return persona;
  }

  // Sobrescribiendo el método toString
  @override
  String toString() {
    return '$nombre $apellido, Edad: ${edad ?? "No especificada"}';
  }
}
