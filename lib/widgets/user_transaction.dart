import 'package:flutter/material.dart';
import './../widgets/transactions_list.dart';

import './new_tranaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
         NewTransation(),
        TransactionList()
    ],);
  }
}