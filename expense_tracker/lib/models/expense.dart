import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Categorys { food, travel, leisure, work }

const categoryIcons = {
  Categorys.food: Icons.lunch_dining,
  Categorys.travel: Icons.flight_takeoff,
  Categorys.leisure: Icons.movie,
  Categorys.work: Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.categorys,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Categorys categorys;

  String get formattedDate {
    // This will return string date
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({required this.categorys, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.categorys)
      : expenses = allExpenses
            .where((element) => element.categorys == categorys)
            .toList();

  final Categorys categorys;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
