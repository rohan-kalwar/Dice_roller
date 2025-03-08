import 'package:flutter/material.dart';
import 'package:ticket_app/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

var currentDiceImage = 'assets/images/dice-1.png';

// ignore: must_be_immutable
class GradientColor extends StatelessWidget {
  const GradientColor(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {
    currentDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}