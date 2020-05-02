import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';
import './transaction_form.dart';
import './transaction_list.dart';

class TransactionsUser extends StatefulWidget {
  @override
  _TransactionsUserState createState() => _TransactionsUserState();
}

class _TransactionsUserState extends State<TransactionsUser> {
  final _transactions = [
    Transactions(
      id: 't1',
      title: 'Running shoes',
      value: 210.90,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Gás bill',
      value: 50.5,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
