import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shamsi Date'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  print(Jalali.now().toString());
                },
                child: const Text(
                  'Shamsi date now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Jalali j = Jalali.now();
                  print('day:${j.day}');
                  print('dat of week:${j.weekDay}');
                  print('month:${j.month}');
                  print('year:${j.year}');
                },
                child: const Text(
                  'Shamsi date separate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Jalali j = Jalali.now();
                  print('second${j.second}');
                  print('minute${j.minute}');
                  print('Hour${j.hour}');
                },
                child: const Text(
                  'Time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(Gregorian.now());
                },
                child: const Text(
                  'Gregorian date now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Gregorian g = Gregorian.now();
                  print('day:${g.day}');
                  print('dat of week:${g.weekDay}');
                  print('month:${g.month}');
                  print('year:${g.year}');
                },
                child: const Text(
                  'Gregorian separate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


