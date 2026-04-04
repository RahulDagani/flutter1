import 'package:flutter/material.dart';

const stratAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//             begin: stratAlignment,
//             end: endAlignment,
//             ),
//       ),
//       child: Center(
//         child: Styledtext("Hello World"),
//       ),
//     );
//   }
// }

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,{super.key});
  
  const GradientContainer.purple({super.key})
    : color1=Colors.deepPurple,
      color2=Colors.deepPurpleAccent;

  final Color color1;
  final Color color2;
  void rollDice(){

  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
            begin: stratAlignment,
            end: endAlignment,
            ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/dice-1.png",width: 200,),
            TextButton(onPressed: rollDice,
              child: const Text("Roll Dice", style: TextStyle(color: Colors.white, fontSize: 20),))
          ],
        ),
      ),
    );
  }
}