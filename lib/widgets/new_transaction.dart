import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;

  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleInput,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              textColor: Colors.purple,
              child: Text('Add transaction'),
              onPressed: () {
                addNewTransaction(
                    titleInput.text, double.parse(amountInput.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
