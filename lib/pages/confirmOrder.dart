import 'package:flutter/material.dart';
import 'package:game/component/listof_games.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(217, 180, 192, 190),
        title: const Text('Buy Now'),
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              const Text('Be 10 Be 100 Ticket'),
              const Row(
                children: [
                  Text('Class ID'),
                  SizedBox(
                    width: 24,
                  ),
                  Text('0001'),
                ],
              ),
             const Row(
                children: [
                  Text('T_ID'),
                  SizedBox(
                    width: 24,
                  ),
                  Text('12'),
                ],
              ),
              const Row(
                children: [
                  Text('Time'),
                  SizedBox(
                    width: 24,
                  ),
                  Text('2023/07/08 14:34:25'),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text('Confirm'))
            ],
          ),
        ),
      ),
    );
  }
}
