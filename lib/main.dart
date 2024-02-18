import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: NinjaApp(),
  ));
}

class NinjaApp extends StatefulWidget {
  const NinjaApp({super.key});

  @override
  State<NinjaApp> createState() => _NinjaAppState();
}

class _NinjaAppState extends State<NinjaApp> {
  int ninjaLevelCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
            'Ninja Id Card',
            style: TextStyle(
              color: Colors.white
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            ninjaLevelCount += 1;
          })
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.grey[200],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://media.istockphoto.com/id/1284172836/vector/human-skull-poster-illustration.jpg?s=612x612&w=0&k=20&c=2qMf9vnLVZwutJmGrFCOTrc0oH45YCmJhgnH4MgQmMM='),
                radius: 60.0,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),

            Text(
              'Name:',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 10.0),

            Text(
              'Awe AbdurRahmaan Abu-Khalid',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 0.0,
                fontSize: 22.0,
                fontWeight: FontWeight.bold
              )
            ),

            const SizedBox(height: 30.0),

            Text(
              'Current Ninja Level:',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 10.0),

            Text(
              '$ninjaLevelCount',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 0.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
            ),

            const SizedBox(height: 30.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                const SizedBox(width: 10.0),

                Text(
                  'awejoseph01@gmail.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),

                const SizedBox(width: 10.0),

                Text(
                  '+66 234 33 221',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16.0,
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

