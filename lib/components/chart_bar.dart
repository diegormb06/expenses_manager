import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  ChartBar({
    this.label,
    this.value,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '${value.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 10),
        ),
        Container(
          height: 60,
          width: 10,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(220, 220, 220, 0.7),
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
        ),
        Text('$label'),
      ],
    );
  }
}
