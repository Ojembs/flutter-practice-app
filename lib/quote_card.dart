import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({ required this.quote,  required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.quoteText,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500
                ),
              ),

              const SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      '- ${quote.quoteAuthor}',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold
                      )
                  ),

                  const SizedBox(width: 6.0),

                  IconButton(
                    onPressed: () => delete(),
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.red,
                    ),
                  )
                ],
              )

            ],
          ),
        )
    );
  }
}
