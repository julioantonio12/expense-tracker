import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import '../models/expense.dart';
import 'new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Refrescos',
        amount: 49.50,
        date: DateTime.now(),
        category: Category.comida),
    Expense(
        title: 'Gasolina',
        amount: 200,
        date: DateTime.now(),
        category: Category.viaje)
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rastreador de gastos"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(children: [
        const Text("Gráfica"),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ]),
    );
  }
}
