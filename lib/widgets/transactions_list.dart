import 'package:flutter/material.dart';
import './../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  
  final List<Transaction> _userTranactions=[
      Transaction(
        id: 't1', title: 'New shoes', amount: 23.23, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New t-shirt', amount: 10.93, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return      Column(
              children: _userTranactions
                  .map(
                    (tx) => Card(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "\$${tx.amount} ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tx.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                // DateFormat().format(tx.date),
                                //DateFormat('yyyy/MM/dd').format(tx.date),
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
  }
}