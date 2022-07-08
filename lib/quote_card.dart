import 'package:flutter/material.dart';
import 'package:flutter_87/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;

  //final Function delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            quote.author,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          SizedBox(
            height: 8.0,
          ),
          FlatButton.icon(
            onPressed: (() {
              delete();
            }),
            icon: Icon(Icons.delete),
            label: Text("delete"),
          )
        ]),
      ),
    );
  }
}
