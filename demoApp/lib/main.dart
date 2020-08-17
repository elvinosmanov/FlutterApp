import 'package:demoApp/quote.dart';
import 'package:flutter/material.dart';
import 'QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        quote: 'Menim adim Osmanov Elvindir Bes senin adin',
        author: "Elvin Osmanov"),
    Quote(
        quote: "Menim adim Osmanov Elvindir Bes senin adin",
        author: "Emin Qaralov"),
    Quote(
        quote: 'Menim adim Osmanov Elvindir Bes senin adin',
        author: "Nermin Osmanova"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
