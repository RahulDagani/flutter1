
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

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
      color2=Colors.indigo;

  final Color color1;
  final Color color2;

  
  
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
        child: DiceRoller(),
      ),
    );
  }
}