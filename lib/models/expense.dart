import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('d/MM/y');

const uuid = Uuid();

enum Category { comida, viaje, ocio, trabajo }

const categoryIcons = {
  Category.comida: Icons.lunch_dining,
  Category.viaje: Icons.flight_takeoff,
  Category.ocio: Icons.movie,
  Category.trabajo: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // Initializer list FEATURE (Dart)

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
