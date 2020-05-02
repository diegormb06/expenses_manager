import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor: (R\$)'),
            ),
            FlatButton(
              child: Text('Cadastrar nova Transação'),
              textColor: Colors.purple,
              onPressed: () {
                print(titleController.text);
                print(valueController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
