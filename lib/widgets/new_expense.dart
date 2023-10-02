import 'package:flutter/material.dart';
import 'package:intl/number_symbols.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController =
      TextEditingController(); // Controller approach to manage data
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Gasto'),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            decoration: const InputDecoration(
              prefixText: '\$',
              label: Text("Cantidad"),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  print("cancel button");
                },
                child: const Text("Cancelar"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text("Guardar gasto"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
