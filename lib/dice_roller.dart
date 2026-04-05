import 'dart:math';

import 'package:flutter/material.dart';

final randomizer= Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller>createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 1;
  void rollDice(){
    setState(()=> currentDiceRoll=randomizer.nextInt(6)+1);
  }

  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',width: 200,),
            SizedBox(height: 10,),
            TextButton(
              onPressed: rollDice,
              child: const Text("Roll Dice", 
              style: TextStyle(color: Colors.white, fontSize: 20),))
          ],
        );
  }
}