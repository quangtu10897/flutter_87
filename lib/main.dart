import 'package:flutter/material.dart';
import 'package:flutter_87/quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(author: "Superman", text: "Man of steel"),
    Quote(author: "Batman", text: "The dark knight"),
    Quote(author: "Flash", text: "The fastest man alive")
  ];

  /*Widget quoteTemp(quote) {
    return QuoteCard(quote: quote);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("good qoutes"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ) /*Text('${quote.author} - ${quote.text} ')*/)
            .toList(),
      ),
    );
  }
}
