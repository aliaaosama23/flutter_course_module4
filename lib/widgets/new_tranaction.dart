import 'package:flutter/material.dart';

class NewTransation extends StatelessWidget {
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return         
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      // onChanged:(String value){
                      //    print('title is $value');
                      //    titleInput=value;
                      //    } ,
                      obscureText: false,
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                    ),
                    TextField(
                      //  onChanged:(String value){
                      //    print('amount is $value');
                      //    amountInput=value;
                      //    } ,
                      obscureText: false,
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                    ),
                    TextButton(
                        onPressed: () {
                          print('title is ${titleController.text} & amount is ${amountController.text}');
                        },
                        child: Text(
                          'add trasaction',
                          style: TextStyle(color: Colors.purple),
                        ))
                  ],
                ),
              ),
            );
  }
}