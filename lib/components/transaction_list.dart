import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) removeTransaction;

  TransactionList(this.transactions, this.removeTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                SizedBox(height: 5),
                Text(
                  'No expenses',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 15),
                Container(
                  height: 226,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) {
                final tr = transactions[index];
                return Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('R\$${tr.value}'),
                        ),
                      ),
                    ),
                    title: Text(
                      tr.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      DateFormat('d MMM y').format(tr.date),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_forever_rounded),
                      color: Theme.of(context).errorColor,
                      onPressed: () => removeTransaction(tr.id),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
