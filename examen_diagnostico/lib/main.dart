import 'package:examen_diagnostico/widget.dart';
import 'package:flutter/material.dart';
import 'widget.dart'; // Importa el archivo de widgets personalizados

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  final List<Persona> estudiantes = [
    Persona.conEdad('Juan', 'Pérez', 20),
    Persona.conEdad('Ana', 'Martínez', 22),
    // Agrega más estudiantes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Estudiantes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: estudiantes.length,
          itemBuilder: (context, index) {
            return StudentCard(student: estudiantes[index]);
          },
        ),
      ),
    );
  }
}

class Persona {
  String nombre;
  String apellido;
  int? edad;

  Persona(this.nombre, this.apellido);

  factory Persona.conEdad(String nombre, String apellido, int edad) {
    Persona persona = Persona(nombre, apellido);
    persona.edad = edad;
    return persona;
  }

  @override
  String toString() {
    return '$nombre $apellido, Edad: ${edad ?? "No especificada"}';
  }
}
