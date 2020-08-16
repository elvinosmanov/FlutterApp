import 'package:demoApp/quote.dart';
import 'package:flutter/material.dart';

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
        quote:
            'Contrary to popular belief, Lorem Ipsum is not simply random text',
        author: "Elvin Osmanov"),
    Quote(
        quote: "ontrary to popular belief, Lorem Ipsum is ",
        author: "Emin Qaralov"),
    Quote(
        quote: 'making it over 2000 years old. Richard McClintock, a Latin',
        author: "Nermin Osmanova"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => Text("${quote.author}:  ${quote.quote}\n"))
            .toList(),
      ),
    );
  }
}
