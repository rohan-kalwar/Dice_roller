import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
    currentDiceImage = 'assets/images/dice-$diceRoll.png';
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              currentDiceImage,
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                  ),
                foregroundColor: Colors.black, 
                textStyle: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                ),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );
  }
}