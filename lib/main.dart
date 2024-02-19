import 'dart:js_util';

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp( const MaterialApp(
    home: QuoteApp(),
  ));
}

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List<Quote> quotes = [
    Quote(
        quoteText: "In the end, it's not the years in your life that count. It's the life in your years. ",
        quoteAuthor: 'Abraham Lincoln'
    ),
    Quote(
        quoteText: "The only way to do great work is to love what you do. ",
        quoteAuthor: 'Steve Jobs'
    ),
    Quote(
        quoteText: "Success is not final, failure is not fatal: It is the courage to continue that counts. ",
        quoteAuthor: "Winston Churchill"
    ),
    Quote(
        quoteText: "The only limit to our realization of tomorrow will be our doubts of today.",
        quoteAuthor: "Franklin D. Roosevelt"
    ),
    Quote(
        quoteText: "Life is what happens when you're busy making other plans.",
        quoteAuthor: 'John Lennon'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Quote App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontFamily: 'Inter'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList()
      )
    );
  }
}

