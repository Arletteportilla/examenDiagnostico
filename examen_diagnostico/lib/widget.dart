import 'package:flutter/material.dart';
import 'main.dart'; // Importa el archivo main para acceder a la clase Persona

class StudentCard extends StatelessWidget {
  final Persona student;

  StudentCard({required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        child: Text(
          student.toString(),
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
